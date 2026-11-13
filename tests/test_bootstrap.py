import importlib.util
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("bootstrap", ROOT / "bootstrap.py")
bootstrap = importlib.util.module_from_spec(spec)
spec.loader.exec_module(bootstrap)

class BootstrapTests(unittest.TestCase):
    def test_prepare_keeps_modified_files(self):
        with tempfile.TemporaryDirectory() as folder:
            with patch.object(bootstrap, "WORKSPACE", Path(folder)):
                bootstrap.prepare()
                prompt = Path(folder) / "AGENT_HQ_MASTER_PROMPT.md"
                self.assertTrue(prompt.exists())
                prompt.write_text("user customization", encoding="utf-8")
                bootstrap.prepare()
                self.assertEqual(prompt.read_text(encoding="utf-8"), "user customization")

    def test_check_missing_codex(self):
        with patch.object(bootstrap.shutil, "which", return_value=None):
            self.assertEqual(bootstrap.main(["--check"]), 2)

    def test_prepare_does_not_launch_codex(self):
        with tempfile.TemporaryDirectory() as folder:
            with patch.object(bootstrap, "WORKSPACE", Path(folder)):
                with patch.object(bootstrap.subprocess, "call") as call:
                    self.assertEqual(bootstrap.main(["--prepare"]), 0)
                    call.assert_not_called()

if __name__ == "__main__":
    unittest.main()
