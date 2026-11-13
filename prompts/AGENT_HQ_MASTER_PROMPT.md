Build Agent HQ — a Local, Interactive 2.5D AI Operations Center

You are working on my computer as my implementation agent.

Audit my existing AI agents, tools, workflows, and accessible activity. Then build and launch a locally hosted application that lets me understand and operate them through a beautiful, interactive 2.5D tycoon interface.

This is an implementation task. Inspect the environment, make a concise plan, build the application, connect real capabilities, verify its behavior, refine the visuals, and launch it.

Make reasonable decisions autonomously. Ask questions only when missing information genuinely blocks progress or an action requires authorization that has not already been provided.

1. Product vision

Create Agent HQ, a playable headquarters for my actual AI operations. Make the application’s name and branding configurable.

The application should feel like managing an organization in a polished tycoon game:

* Agent configurations become employees.
* Roles and skills determine which assignments they can handle.
* Departments represent actual capabilities and workflows.
* Tasks become assignments and work orders.
* Finished packages contain real deliverables.
* Approvals, feedback, and revisions become management decisions.
* Tools and integrations become equipment and facilities.
* Improved instructions, references, and checks become training.
* Queues and dependencies become visible operational bottlenecks.

The purpose is to make real work understandable, manageable, and enjoyable.

Support whatever relevant work my setup actually performs: development, research, writing, design, administration, analysis, automation, or other activities.

Build around the discovered environment rather than assuming a particular profession, business, AI provider, operating system, or framework.

2. Audit the actual environment first

Inspect the current workspace, applicable instructions, relevant agent configuration, and discoverable local setup.

Read applicable AGENTS.md files and equivalent project instructions. Use relevant available skills. Preserve existing work and settings.

Discover, where accessible:

* Host operating system and available development tools.
* Installed agent runtimes and their versions.
* Agent profiles, model configurations, and actual model identifiers.
* Skills, prompts, reusable instructions, and workflow definitions.
* MCP servers, plugins, tools, and connected services.
* Relevant projects and repositories.
* Running agent jobs and accessible session history.
* Existing schedulers and automations.
* Output directories, logs, and artifact stores.
* Supported execution, observation, cancellation, steering, and approval interfaces.
* Existing authentication mechanisms, without revealing credentials.

Start with known configuration locations and referenced project directories. Keep inspection relevant and respect access boundaries.

For each capability, record separately whether it is:

1. Discovered or installed.
2. Configured.
3. Reachable or authenticated.
4. Permitted for the intended operation.
5. Successfully exercised.

Include evidence locations, observation timestamps, and limitations. Redact sensitive values.

A configuration entry does not prove that a connection works. Historical activity does not establish that a job is currently running. A listed model is not necessarily available to the current account.

Also distinguish the tools available to you during this development session from the tools the resulting application can actually invoke.

Produce a concise discovery report and a machine-readable capability inventory. Then continue implementing.

Clearly state the limits of visibility. Do not claim to observe inaccessible agents, accounts, sessions, or remote systems.

3. Make the main experience a polished, interactive 2.5D world

The default screen must open into a navigable isometric headquarters.

Visual direction

Aim for a premium miniature office, workshop, or technology campus with:

* A consistent isometric or orthographic perspective.
* Readable building volumes and room interiors.
* Attractive materials, soft directional shadows, and convincing depth.
* Cohesive proportions, lighting, colors, and visual detail.
* Distinct departments with recognizable silhouettes and furnishings.
* Desks, monitors, workbenches, shelves, lamps, plants, windows, and environmental details.
* Appealing employee characters with readable silhouettes.
* Thoughtfully arranged paths and spaces.
* Interface panels that belong to the same visual style.

Use a coherent palette, restrained accent colors, and clear visual hierarchy. Make a strong design decision and carry it through consistently.

The headquarters should look intentional and visually appealing at first launch.

Use original assets, appropriately licensed assets, or available generation tools. Maintain asset provenance. If image generation is unavailable, build a cohesive visual style with suitable original geometry or sprites.

Finish a compact initial headquarters to a high standard. Expand departments as discovered capabilities justify them.

Required interactions

Implement:

* Smooth camera panning.
* Zooming with sensible limits.
* A fit-to-headquarters or return-home control.
* Mouse, trackpad, and touch interaction where supported.
* Clear hover and selection feedback.
* Selectable buildings, workstations, employees, and job packages.
* Useful inspection panels.
* Camera focus on a selected employee or department.
* Correct depth ordering and occlusion.
* Visible interior activity through cutaway rooms, selectable roofs, or an equivalent design.
* Responsive layouts and readable controls.
* Keyboard-accessible alternatives for important operations.
* Reduced-motion support.

Employees may walk to workstations, inspect work, request help, or deliver packages. Tie operational animations to actual events.

Decorative motion may make the world pleasant, but it must not imply that a task completed, an integration connected, or a business result occurred.

Use honest states for opaque work. Do not invent completion percentages.

Visual animation must not trigger AI requests. Update operational state through runtime events or appropriately bounded observation.

4. Build the organization from discovered capabilities

Create departments and project areas based on the audit.

Possible examples include engineering, research, writing, design, analysis, administration, and operations. Adapt these to the actual environment.

Represent a department as operational only when its relevant capability is connected. Unconfigured facilities may appear as clearly labeled expansion opportunities.

Every operational object must connect to a real record:

* An employee links to an agent configuration.
* An active worker instance links to an execution.
* A job links to an assignment or workflow run.
* A package links to an actual output.
* A decision links to the exact version being reviewed.
* A status links to an observation or event.

Distinguish persistent worker definitions from currently executing runs.

Allow me to inspect the evidence behind the visual state.

5. Give employees meaningful configurations

Represent an employee as:

Role + model configuration + skills + project knowledge + tools + permissions + operating limits.

Keep these attributes independent.

For example:

* A junior role may handle bounded assignments with clear requirements.
* A senior role may handle ambiguous work or receive escalations.
* A specialist may have a narrow workflow and dedicated tools.
* A reviewer may check outputs against explicit requirements.

Discover actual model identifiers and supported settings. Do not invent a capability hierarchy, prices, endpoints, or account access.

Each employee inspector should show:

* Name and role.
* Underlying runtime and model configuration.
* Assigned project and current task.
* Relevant skills and tools.
* Approved instructions and context sources.
* Current state.
* Recent outputs.
* Supported controls.
* Observed usage or cost, when available.
* Review requirements and authority.

Support creating or editing employee configurations where the runtime permits it.

Distinguish configuring a worker from launching a job. Changing a title must not automatically expand permissions.

Use observed performance for specialization or promotion. Show “not yet evaluated” where evidence is insufficient.

6. Implement the complete operating loop

Build this interaction:

1. I select a project, department, or employee.
2. I create or choose a supported assignment.
3. I see its scope, expected output, and relevant limits.
4. The application starts the real job through a verified interface.
5. The visual state follows actual execution events.
6. The application receives the result.
7. I inspect the output.
8. I accept it, request a revision, or reject it.
9. The output version and decision are saved.
10. A revision becomes traceable new work with my feedback attached.

Provide supported controls for starting work, inspecting it, giving direction, reviewing results, and interrupting or cancelling execution.

Each integration must declare what it can observe and control. Disable unsupported controls with a clear explanation.

Represent states such as:

* Available.
* Queued.
* Running.
* Waiting for input.
* Waiting for approval.
* Blocked.
* Completed.
* Failed.
* Cancelled.
* Disconnected.
* Unknown.

Keep execution status separate from review status.

Approving a plan, accepting a deliverable, and authorizing an external action are different decisions. Record the exact version, target, and scope approved.

7. Make the management mechanics useful

Delegation and escalation

Assign work to an appropriate employee.

Where supported, allow escalation to another employee with the requirements, attempted work, previous feedback, and relevant failure evidence included.

Bound retries, resource use, and escalation depth.

Training

Save feedback with its task. Let a useful lesson become a proposed reusable instruction, example, template, or check.

Version these changes and make them inspectable and reversible.

Do not silently modify global agent instructions or imply that saving feedback retrains the underlying model.

Equipment

Show which tools, integrations, and reference materials equip a department. Make missing prerequisites clear.

Queues and dependencies

Show waiting work and why it is waiting: another task, a decision, a connection, a resource limit, or missing information.

Operating resources

Display actual usage and costs when available.

Distinguish reported amounts, estimates, allocated subscription costs, and unknown values. Do not fabricate salaries, revenue, profit, or productivity scores.

Measure useful outcomes such as accepted work, corrections required, turnaround, and cost per accepted result when the data supports them.

8. Use verified runtime integrations

Reuse existing runtimes and supported authentication mechanisms where possible.

Inspect installed versions and current official documentation before choosing an integration.

Depending on the environment, suitable interfaces might include:

* A documented local agent server.
* An official SDK.
* A supported noninteractive command interface.
* A workflow engine’s API.
* An existing local service.
* A read-only event or history source.

For Codex installations, evaluate the documented app-server, SDK, or noninteractive interface according to the installed version and available access. Apply the same version-aware approach to other runtimes.

Use version-matched schemas or bindings where available. Identify experimental dependencies.

Keep execution adapters behind the local backend. Never expose credentials or unrestricted shell access to the browser.

Use supported authentication flows. Do not assume that an existing subscription permits arbitrary API access or unlimited execution.

Respect existing spending authorization. Obtain approval before adding paid services or new paid dependencies.

For every integration, distinguish:

* Imported historical information.
* Current observations.
* Jobs launched and owned by this application.
* External jobs that can only be observed.
* Controls that have actually been verified.

Preserve existing scheduler ownership and avoid duplicate recurring jobs.

If an integration is unavailable, finish the remaining application and show its specific missing requirement. Keep development fixtures separate from live state.

9. Keep hosting local and the architecture maintainable

Build a locally hosted application for this device.

Choose a suitable stack after inspecting the environment. Select a rendering approach that supports the required 2.5D experience.

Prefer a compact architecture with:

* One application.
* A local backend.
* Durable local persistence.
* Explicit runtime adapters.
* An event-driven representation of operational state.
* A separate world-rendering layer.

Persist employee configurations, jobs, events, decisions, workflow versions, output references, and world layout.

The world and direct operations views must use the same underlying records.

Handle:

* Browser refresh.
* Reconnection.
* Application restart.
* Interrupted jobs.
* Duplicate requests.
* Stale observations.
* Unavailable providers.

Reconnecting or retrying must not accidentally repeat an external action or launch the same assignment twice.

Host on loopback by default. Provide a simple start command or launcher, a clear stop procedure, and the exact working local URL.

Keep credentials server-side, redact secrets from logs, and protect control endpoints against requests from unrelated websites.

Explain actual runtime behavior. Closing the browser may leave the backend running, while device sleep or shutdown can interrupt local execution.

Do not implicitly expose public or LAN access, alter sleep settings, or install persistent background startup. Treat these as explicit deployment choices.

10. Keep important controls easy to reach

Alongside the world, provide compact views for:

* Decisions requiring attention.
* Active and queued assignments.
* Employees and capabilities.
* Actual outputs.
* Connections and operating settings.

The world remains the primary experience, while important operations remain directly accessible.

Provide in-application notifications for useful events such as:

* Work ready for review.
* A blocked assignment.
* A request for input.
* A failed execution.
* A connection requiring attention.

Avoid artificial urgency, daily streaks, or penalties for being away.

The application should help me make a few useful decisions and let authorized work continue.

11. Preserve authority boundaries

Proceed autonomously with local implementation, reversible changes, and appropriate verification.

Preserve existing agent permissions and operating policies.

Do not publish content, send messages, deploy unrelated projects, purchase services, or perform unrelated external mutations merely to demonstrate the interface.

When an action requires authorization, prepare its concrete output, target, consequences, and resource limits before requesting approval.

Use bounded, low-risk work for verification.

If one dependency is blocked, continue everything else that can be completed and explain the specific remaining blocker.

12. Verify visual quality and operational correctness

Treat these as separate acceptance requirements.

Visual verification

Run the application and inspect it in a browser.

Verify that:

* The initial scene feels like a cohesive 2.5D headquarters.
* Buildings, characters, props, lighting, and UI share a consistent style.
* Pan, zoom, selection, and hit testing work across supported scales.
* Depth ordering and occlusion are correct.
* Panels and labels remain readable.
* Important controls work on smaller screens.
* Animation performs well on this device.
* Reduced motion works.
* There are no broken assets, clipped content, or overlapping controls.

Capture screenshots and refine visible problems before considering the visual work complete.

Operational verification

Choose a genuinely available, low-risk workflow and demonstrate it through the interface:

1. Start a real assignment.
2. Observe actual execution.
3. Retrieve an actual output.
4. Open and inspect it.
5. Record a review decision.
6. Exercise revision where supported.
7. Confirm records survive a restart.
8. Confirm reconnecting does not duplicate execution.

Check failure and disconnected states. Verify that unsupported controls remain unavailable.

Use meaningful tests for persistence, lifecycle transitions, approval handling, and duplicate prevention. Clearly report checks that could not be run.

If execution access is unavailable, deliver the working local application and inspection features, identify the exact missing connection, and accurately describe the unverified parts.

13. Final delivery

When finished:

* Launch the application locally.
* Provide the exact working URL.
* Summarize the discovered environment and visibility limits.
* Identify working integrations and verified controls.
* Show screenshots of the finished headquarters.
* Explain how to start and stop the application.
* Identify where application data and outputs are stored.
* Include a concise setup guide and capability report.
* List anything blocked or unverified.

The result should be a polished, interactive 2.5D headquarters with real operational value.

Begin with the local audit and continue through implementation, visual refinement, integration verification, and launch.
