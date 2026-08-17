---
name: digital-marketing-pro
license: MIT
description: >
  Digital Marketing Pro: a 163-skill marketing operating system covering
  strategy, content, SEO/AEO, paid media, analytics, and compliance. Use when
  the user asks for marketing work that matches one of the bundled sub-skills:
  SEO/AEO audits, competitive analysis, content calendar/briefs/engines, ad
  creative, campaign plans, analytics/KPI trees, attribution, email sequences,
  social, CRO, brand setup, client proposals/reports, budget tracking, or any
  /digital-marketing-pro:* workflow. No credit or attribution required (MIT).
---

# Digital Marketing Pro

Bundle of 163 skills + 24 agents + Python tooling, vendored from
[github.com/indranilbanerjee/digital-marketing-pro](https://github.com/indranilbanerjee/digital-marketing-pro) (MIT). Lives locally at
`vendor/digital-marketing-pro/` — this wrapper routes to the individual skill docs inside it.

## How to use

1. **Match the task to a sub-skill** (index below, or the full JSON at
   `../../vendor/digital-marketing-pro/skills-index.json`).
2. **Read the sub-skill's SKILL.md before producing output** — most are
   intentionally thin and defer the actual rules to their reference files and
   scripts: `../../vendor/digital-marketing-pro/skills/<name>/SKILL.md`
   (plus any `references/` it points to, and `../../../` scripts it names).
3. **Scripts** run with `python3` from `../../vendor/digital-marketing-pro/scripts/`.
4. **Bundle-internal `/digital-marketing-pro:<skill>` references** are doc
   links within this bundle — resolve them by reading that sub-skill's SKILL.md.
5. **Do not inline or summarize**: follow the sub-skill's own mandatory
   reading order so results stay non-generic.

## Skills index (163)

- **`ab-test-plan`** (E) — Design a statistically rigorous A/B or multivariate test plan
- **`ad-creative`** (M) — Generate 3-5 ad copy variations per platform
- **`add-integration`** (G) — Walk through adding a custom MCP server integration to the plugin
- **`aeo-audit`** (E) — Audit how a brand appears across the 6 canonical AI answer surfaces
- **`aeo-geo`** (E) — Strategy module for Answer Engine / Generative Engine Optimization
- **`agency-dashboard`** (E) — Generate a portfolio-level dashboard across ALL client brands
- **`analytics-insights`** (E) — Marketing measurement module
- **`anomaly-scan`** (E) — Scan all connected marketing platforms for statistically significant deviations from stored baselines
- **`attribution-model`** (G) — Design a multi-touch attribution strategy
- **`attribution-report`** (G) — Run multi-touch attribution analysis on real conversion-path data
- **`audience-intelligence`** (E) — Audience research module
- **`audience-profile`** (G) — Build a named, narrative buyer persona document
- **`autopilot-status`** (E) — Campaign autopilot operations dashboard
- **`backlink-gap`** (E) — Find referring domains that link to your competitors but not to you, ranked by an outreach-priority score (0.40 DR + 0.25 link-overlap + 0.20 traffic + 0.15 topical relevance)
- **`brand-setup`** (E) — Create or update the brand profile every other skill reads
- **`budget-optimizer`** (E) — Reallocate marketing spend across channels using performance data and diminishing-returns modeling
- **`budget-tracker`** (E) — Track advertising spend pacing in real time across connected ad platforms (Google Ads, Meta, LinkedIn, TikTok)
- **`c2pa-metadata`** (E) — Embed a C2PA provenance manifest into an AI-generated marketing asset (PNG, JPG, WebP, GIF, TIFF, MP4, MOV, WebM, MP3, WAV, PDF) via scripts/embed-c2pa.py
- **`campaign-audit`** (E) — Inventory and score everything currently running for a brand across paid search, paid social, email, organic, SEO, AEO/GEO, CRM, and analytics
- **`campaign-orchestrator`** (E) — Full campaign-lifecycle module
- **`campaign-plan`** (G) — Generate a complete multi-channel campaign plan document
- **`campaign-status`** (E) — Unified status dashboard for every tracked campaign across connected platforms
- **`case-study-plan`** (G) — Build a complete case-study creation blueprint
- **`check`** (E) — Run the unified pre-publish quality gate on marketing content
- **`churn-risk`** (E) — Score customer segments for churn risk from behavioral signals
- **`client-onboarding`** (G) — Generate a complete onboarding package for a new marketing client
- **`client-proposal`** (G) — Draft a professional agency proposal or pitch document for a prospective client
- **`client-report`** (E) — Generate a white-labeled client report in agency voice
- **`client-validation-document`** (E) — Produce the Part 5 Client Validation Document
- **`cohort-analysis`** (E) — Segment customers into cohorts
- **`competitor-alerts`** (G) — Configure a tiered competitor alert system
- **`competitor-analysis`** (G) — Run a multi-dimensional competitive teardown of 2-5 competitors
- **`competitor-monitor`** (E) — Set up ongoing competitor monitoring
- **`competitor-pages`** (M) — Build competitor comparison and alternatives pages
- **`connect`** (E) — Guide the connection of a known MCP integration to the plugin
- **`content-brief`** (G) — Create a production-ready content brief a writer can execute without extra context
- **`content-calendar`** (G) — Generate a structured content calendar for a month, quarter, or custom range
- **`content-decay-scan`** (E) — Scan the content library for decay
- **`content-engine`** (E) — Draft marketing content in brand voice
- **`content-repurpose`** (E) — Turn one piece of content into a multi-channel repurposing plan
- **`context-engine`** (E) — Load and manage the shared marketing context other skills build on
- **`continuous-improvement-loop`** (M) — Run Part 12 of the engagement methodology
- **`counter-narrative`** (E) — Build a counter-narrative playbook responding to a competitor's positioning move
- **`cowork-setup`** (E) — One-shot setup that wires Digital Marketing Pro for team use in Anthropic Cowork
- **`creative-health`** (G) — Assess ad creative fatigue across active campaigns
- **`creative-testing-framework`** (E) — Design a structured ad creative testing playbook
- **`credential-switch`** (E) — Switch the active credential profile to a different client brand, validating each configured platform's API keys, env vars, and token expiry before anything runs
- **`crisis-response`** (M) — Assess a PR crisis and deliver a structured response plan
- **`crm-sync`** (E) — Sync marketing data to and from Salesforce, HubSpot, Zoho, or Pipedrive
- **`cro`** (E) — Audit landing pages, forms, pricing pages, and checkout flows for conversion killers, and design statistically sound A/B tests
- **`dark-funnel`** (G) — Map the buyer journey activity your attribution can't see
- **`data-export`** (E) — Export marketing data
- **`data-import`** (E) — Import CSV, JSON, or Google Sheets data into a connected CRM, email platform, or audience store
- **`digital-pr`** (E) — Plan and draft digital PR campaigns
- **`email-sequence`** (M) — Design a complete, ESP-ready email sequence
- **`emerging-channels`** (E) — Evaluate and plan emerging marketing channels
- **`engagement-workflow`** (E) — Orchestrate a full marketing engagement through the 12-Part methodology
- **`entity-audit`** (E) — Audit brand entity consistency across the knowledge sources AI engines trust
- **`eval-config`** (E) — View and tune the brand's content evaluation settings
- **`eval-content`** (E) — Score marketing content across six dimensions
- **`eval-suite`** (E) — Batch-evaluate a whole set of content pieces
- **`exec-summary`** (E) — Generate a C-suite-ready executive summary of marketing performance
- **`executive-dashboard`** (G) — Design an executive marketing dashboard as a build-ready specification
- **`focus-group`** (E) — Run a simulated focus group: AI personas grounded in your CRM data react to messaging, pricing, or creative stimuli, producing a transcript with per-segment sentiment, consensus themes, objections, and explicit confidence caveats
- **`four-core-documents`** (M) — Produce Part 3 of the 12-Part engagement: the four strategic-spine documents across 61 steps
- **`funnel-architect`** (E) — Design or restructure a marketing funnel matched to the business model
- **`funnel-audit`** (E) — Audit an existing funnel's stage-to-stage conversion data to find where prospects drop off and why
- **`geo-monitor`** (E) — Track brand visibility in AI answers on a recurring schedule across the 6 canonical surfaces
- **`goal-filter`** (G) — Lock ONE primary marketing goal per brand, then judge any idea, draft, campaign, or plan against it
- **`growth-engineering`** (E) — Structured guidance for engineering growth systems
- **`growth-plan`** (G) — Produce the 11-section Growth Plan
- **`gsc-ai-performance`** (E) — Baseline and interpret Google Search Console's AI Performance Report
- **`help`** (E) — Show the Digital Marketing Pro guide with live plugin state
- **`hreflang-check`** (G) — Audit hreflang implementation from supplied HTML, sitemap XML, or SEO-tool exports (it does not crawl sites)
- **`image-seo-audit`** (G) — Audit every image on a page for SEO, performance, and accessibility
- **`import-guidelines`** (E) — Import brand guidelines
- **`import-sop`** (E) — Import agency Standard Operating Procedures
- **`import-template`** (E) — Import deliverable templates
- **`influencer-brief`** (G) — Create a complete influencer campaign brief
- **`influencer-creator`** (E) — Plan influencer and creator marketing end to end
- **`integrations`** (E) — Show the MCP integration status dashboard
- **`intelligence-report`** (E) — Generate an intelligence briefing from the brand's compound intelligence base
- **`journey-design`** (E) — Design cross-channel customer journeys as state machines
- **`keyword-cluster`** (E) — Build a pillar+spokes content cluster plan from seed keywords
- **`keyword-research`** (E) — Standalone keyword research
- **`landing-page-audit`** (M) — Audit a landing page across six conversion dimensions
- **`language-audit`** (M) — Audit multilingual integrity across every language version of a site or content set
- **`language-config`** (G) — Configure the brand's multilingual settings in profile.json
- **`launch-ad-campaign`** (E) — Create and launch a paid ad campaign on Google, Meta, LinkedIn, or TikTok through the connected ad-platform MCP
- **`launch-campaign`** (E) — Orchestrate the full multi-channel launch of an approved campaign plan
- **`launch-plan`** (G) — Build a three-phase launch playbook
- **`lead-import`** (E) — Import leads into Salesforce, HubSpot, Zoho, or Pipedrive with validation, deduplication against existing CRM records, lead scoring, consent and compliance checks, and source attribution
- **`lead-magnet-ideas`** (G) — Turn a content topic, campaign, or existing piece into 3-5 named, briefable lead-magnet ideas cut from the brand's real assets and expertise, each graded on lead-gen power × build effort, with funnel-fit and delivery notes plus a not-recommended list that pre-empts the obvious-but-weak options. Triggers on \"/digital-marketing-pro:lead-magnet-ideas\", \"lead magnet for this\", \"what should we give away\", \"opt-in ideas\", \"freebie for this campaign\", \"turn this into a lead magnet\". Reads the brand profile for audience, expertise, and existing IP; routes onward to /digital-marketing-pro:email-sequence for the post-capture nurture or /digital-marketing-pro:funnel-architect when there is nowhere to send the lead yet.
- **`learn`** (E) — Save a structured marketing learning to the brand's intelligence graph
- **`live-dashboard`** (E) — Design a Google Looker Studio marketing dashboard as an implementation-ready specification
- **`local-seo`** (E) — Build local SEO strategy end to end
- **`local-seo-audit`** (E) — Run a comprehensive local SEO audit
- **`localize-campaign`** (E) — Localize an entire campaign
- **`loop-detect`** (E) — Detect and model the growth loops already compounding in a business
- **`market-weather`** (E) — Generate a one-page Marketing Weather Report scoring current conditions green/yellow/red across five dimensions
- **`marketing-automation`** (E) — Design marketing automation programs
- **`martech-audit`** (G) — Audit the marketing technology stack
- **`media-plan`** (G) — Build a ready-to-implement paid media plan
- **`message-test`** (E) — Test 2-6 message variants against synthetic audience panels grounded in CRM data before spending on live tests
- **`multilingual-score`** (M) — Score translated or localized content into one composite quality verdict
- **`narrative-landscape`** (E) — Map competitor positioning across 3-5 narrative dimensions to find crowded clusters and unclaimed gaps, then score each gap by customer desirability times brand credibility. Produces a landscape map, ranked gap analysis, a recommended positioning territory, and a 30/60/90-day messaging plan to claim it. Triggers on \"/digital-marketing-pro:narrative-landscape\", \"map the competitive narrative landscape\", \"what positioning gaps can we own\", \"where do competitors cluster\", \"find us a differentiated position\". Reads the brand profile for current positioning and voice; analysis and strategy only
- **`narrative-tracker`** (E) — Track what AI engines (ChatGPT, Perplexity, Gemini, AI Overviews, Copilot) say about the brand, score responses against desired positioning, and flag misrepresentations, drift, and competitor narrative gains. Produces an alignment report, a narrative territory map, and a content strategy to correct AI perception, with snapshots persisted via geo-tracker.py for trend comparison. Triggers on \"/digital-marketing-pro:narrative-tracker\", \"what is ChatGPT saying about us\", \"track our AI narrative\", \"is AI misrepresenting our brand\", \"are competitors gaining narrative ground\". Reads the brand profile for reference positioning; recommends corrective content but does not publish it. Pairs with /digital-marketing-pro:narrative-landscape for competitor messaging territory.
- **`page-seo-analysis`** (G) — Run a deep SEO audit of one URL across title/meta, headings, content depth, E-E-A-T, schema (with deprecation flags for HowTo, FAQ, SpecialAnnouncement), images, internal links, technical signals, and AI search readiness. Produces a scored /80 report with exact replacement title tags and meta descriptions, ready-to-paste JSON-LD, and optional competitor comparison. Triggers on \"/digital-marketing-pro:page-seo-analysis\", \"analyze the SEO of this page\", \"why isn't this page ranking\", \"audit this URL before publish\", \"compare my page against competitor pages\". Reads the brand profile and guidelines; analysis and recommendations only
- **`paid-advertising`** (E) — Plan, structure, and audit paid media campaigns across Google, Meta, LinkedIn, TikTok, Microsoft, programmatic, retail media, native, and audio
- **`pdf-report`** (G) — Generate a branded, audience-structured marketing report
- **`performance-check`** (E) — Pull live metrics from every connected analytics MCP into one cross-channel snapshot: KPI scoreboard with RAG status vs profile targets, period-over-period trends, industry benchmarks, top wins and concerns, and 3-5 recommended actions
- **`performance-report`** (G) — Turn marketing data into a stakeholder-ready performance report: executive summary, channel-by-channel KPI dashboard, trend analysis, anomaly alerts with root-cause hypotheses, and recommendations ranked by expected impact
- **`pipeline-update`** (E) — Update CRM deals
- **`pr-pitch`** (G) — Build a complete media pitch package: an email-ready core pitch with subject line options, 3-5 outlet-specific variations, a target media list with journalist beats and approach notes, an outreach timeline, plus press release draft, fact sheet, and quote bank. Also crafts responses for journalist request platforms (Qwoted, Featured, Source of Sources). Triggers on \"/digital-marketing-pro:pr-pitch\", \"pitch this story to journalists\", \"build a media list for our launch\", \"respond to this journalist request\", \"write a press release and pitch\". Reads the brand profile, guidelines, and custom templates for voice and compliance; produces the materials only
- **`pricing-test`** (E) — Estimate willingness-to-pay by testing 3-8 candidate price points against synthetic audience panels grounded in CRM purchase data (audience-simulator.py), Van Westendorp / Gabor-Granger style. Produces per-segment sensitivity curves, an optimal price, the acceptable price range, revenue- vs volume-maximizing prices, competitive positioning, and tiering recommendations
- **`programmatic-seo`** (G) — Plan or audit SEO pages generated at scale from structured data
- **`prompt-test`** (E) — A/B test content variations by quality score: create a named test, log each variant (scored via eval-runner.py on hallucination, content quality, and readability), and get a winner declaration with margin of victory, confidence level, per-dimension trade-offs, and auto-reject flags. Produces a decision-ready recommendation plus reusable insights about which approach wins for this brand. Triggers on \"/digital-marketing-pro:prompt-test\", \"which headline style works better\", \"A/B test these subject lines\", \"compare two versions of this copy\", \"show the results of my content test\". Reads the brand profile and guidelines for evaluation context; compares eval scores, not live audience performance
- **`publish-blog`** (E) — Publish a blog post to WordPress or Webflow through the connected CMS MCP with SEO metadata, categories and tags, featured image, slug optimization, and optional scheduling. Runs pre-publish gates
- **`qbr-plan`** (G) — Prepare a complete Quarterly Business Review package from the quarter's campaign data: a performance scorecard of goals vs actuals vs benchmarks, top-3 wins with attribution stories, underperformance root-cause analysis, ROI and budget-efficiency breakdowns, 3-5 strategic recommendations, upsell business cases, a next-quarter roadmap, action items with owners, and an account health score. Triggers on \"/digital-marketing-pro:qbr-plan\", \"prepare the QBR\", \"build the quarterly review for this client\", \"quarterly business review deck\", \"summarize the quarter for the client meeting\". Reads the brand profile, guidelines, custom templates, and agency SOPs; works from campaign data the user supplies and structures the presentation content
- **`quality-report`** (E) — Report content-quality trends over time from logged evaluations: weekly score trend charts, a content-type leaderboard, per-dimension performance breakdown, statistically flagged regression alerts, best and worst content examples, and 3-7 prioritized improvement recommendations. Triggers on \"/digital-marketing-pro:quality-report\", \"is our content quality improving\", \"show quality trends for the last month\", \"which content types score worst\", \"any quality regressions lately\". Pulls data via quality-tracker.py from evaluations logged by /digital-marketing-pro:eval-content
- **`rank-monitor`** (G) — Set up and run keyword ranking monitoring
- **`recall`** (E) — Retrieve validated marketing learnings from the brand's compound intelligence graph for a channel, audience, objective, or freeform situation
- **`redirect-manager`** (E) — Create, audit, and repair URL redirects
- **`region-config`** (G) — Configure a brand's regional settings
- **`reputation-management`** (E) — Full reputation playbook: FTC-compliant review generation, negative-review response frameworks, 3-tier crisis communication with a 72-hour severe-crisis timeline, 4-layer brand safety assessment, sentiment monitoring design, and 30/60/90-day recovery plans
- **`retargeting-strategy`** (E) — Design a cross-platform retargeting playbook
- **`review-response`** (M) — Draft ready-to-post responses to positive, neutral, and negative reviews on any platform (Google, Yelp, G2, Capterra, Trustpilot, Amazon, App Store), with formal and casual variants, brand-voice scoring, escalation recommendations, and a batch mode that varies language across similar reviews to avoid templated-sounding replies. Triggers on \"/digital-marketing-pro:review-response\", \"reply to this 1-star review\", \"write a response to this Google review\", \"we got a nasty Yelp review, what do we say\", \"draft replies for this batch of reviews\". Reads the brand profile, voice-and-tone guidelines, and custom templates; it drafts and scores the responses
- **`roi-calculator`** (E) — Compute campaign ROI from spend, conversion, and revenue inputs
- **`save-knowledge`** (E) — Save a single piece of brand knowledge
- **`schedule-social`** (E) — Schedule social posts to Twitter/X, Instagram, LinkedIn, TikTok, YouTube, and Pinterest through connected platform MCPs
- **`search-knowledge`** (E) — Search everything the brand has stored in memory
- **`segment-audience`** (E) — Build or update audience segments in the brand's CRM, email, or ad platform (Salesforce, HubSpot, Mailchimp, Meta Custom Audiences, Google Customer Match, and more) via connected MCPs
- **`send-email-campaign`** (E) — Send a targeted email campaign through a connected SendGrid, Klaviyo, Customer.io, Brevo, or Mailchimp MCP
- **`send-notification`** (E) — Send internal team notifications through a connected Slack or Intercom MCP
- **`send-report`** (E) — Generate a performance report from connected analytics MCPs (Google Analytics, Google/Meta/LinkedIn Ads, email platforms) and deliver it via Slack, email, or Google Sheets
- **`send-sms`** (E) — Send an SMS or WhatsApp marketing message through a connected Twilio or Brevo MCP, with consent verification (TCPA/GDPR/CASL), quiet-hours enforcement, opt-out and message-length checks, cost estimates, and delivery tracking. Nothing sends without an Execution Summary and explicit typed approval
- **`seo-audit`** (E) — Run a comprehensive SEO audit across technical health, on-page, content quality, E-E-A-T, link profile, and local SEO
- **`seo-drift`** (E) — Compare two SEO snapshots from the same source
- **`seo-implement`** (E) — Execute approved SEO changes on a connected WordPress or Webflow CMS
- **`seo-plan`** (G) — Build a 12-month SEO strategy and phased roadmap with industry templates (SaaS, ecommerce, local, publisher, agency). With fresh specialist outputs it runs as a dispatcher: scores four pillars
- **`serp-tracker`** (G) — Deprecated pointer skill
- **`share-of-voice`** (E) — Calculate share of voice against named competitors across four dimensions
- **`signal-mine`** (G) — Triage a raw dump of external material
- **`simulate`** (G) — Run Monte Carlo simulations (default 10,000 iterations via revenue-simulator.py) of marketing scenarios
- **`sitemap-manager`** (G) — Audit an existing XML sitemap
- **`social-strategy`** (G) — Build a platform-specific social media strategy: 3-5 content pillars, posting cadence, content-mix ratios, an engagement playbook with response templates, growth tactics, KPI targets, and a 30-day quick-start plan across Instagram, TikTok, LinkedIn, X, YouTube, Facebook, Pinterest, and Threads. Strategy only
- **`sop-library`** (E) — Manage the agency's Standard Operating Procedure library
- **`status`** (E) — Print a read-only status snapshot of the active brand via scripts/dm-status.py: profile summary, engagements with current part and update age, last five insights, recent compliance violations, and Python dependency mode
- **`story-mine`** (G) — Turn a real experience
- **`switch-brand`** (E) — Switch the active brand profile for multi-client and agency work by running setup.py --switch-brand, after listing configured brands with the active one starred; confirms the new brand's industry, business model, and primary channel so subsequent outputs use its voice and compliance rules. Triggers on \"/digital-marketing-pro:switch-brand\", \"switch to the other client\", \"change brand to Acme\", \"list available brands\", \"what brands do I have set up\". Can present a side-by-side comparison of two brand profiles on request; offers /digital-marketing-pro:brand-setup when the brand isn't found; pairs with /digital-marketing-pro:status to verify the active context.
- **`sync-memory`** (E) — Batch-sync this session's learnings, insights.json entries, and campaign history into the persistent memory layer
- **`team-assign`** (E) — Assign marketing tasks to team members by scoring role fit, channel expertise, current utilization, and region alignment; also lists active assignments and builds workload dashboards with capacity warnings and rebalancing suggestions. Triggers on \"/digital-marketing-pro:team-assign\", \"who should write the Q2 email sequence\", \"assign this task to someone on the team\", \"show current assignments\", \"is anyone on the team overloaded\". Reads the team roster and capacity via team-manager.py, notifies assignees through a connected Slack or email MCP when available, and logs every assignment for audit.
- **`tech-seo-audit`** (E) — Run a technical SEO audit of a site
- **`technical-seo`** (E) — Deep technical SEO knowledge module covering Core Web Vitals, crawlability, indexation, site architecture, JavaScript SEO, redirects, structured data, hreflang, and migrations
- **`translate-content`** (E) — Translate marketing content with automatic service routing per language pair, quality scoring across five dimensions (length ratio, formatting, key terms, placeholders, completeness), and a brand-voice check on the result; flags idioms, wordplay, and emotional CTAs for transcreation with 2-3 scored creative options plus back-translations. Triggers on \"/digital-marketing-pro:translate-content\", \"translate this landing page into German\", \"localize this email for India\", \"transcreate our slogan\", \"does the translated version keep our brand voice\". Reads the brand profile's do-not-translate terms, glossary, and formality preferences; executes via connected translation MCP servers.
- **`validate-output`** (E) — Validate marketing content against a structural schema
- **`validate-profile`** (E) — Read-only health check that a brand profile is production-ready: required fields, voice and audience completeness, guardrails, compliance-jurisdiction coverage, connector configuration and MCP reachability, output-path writeability, and model-registry age
- **`verify-claims`** (E) — Extract every verifiable claim in marketing copy
- **`video-packaging`** (M) — Generate or critique video packaging
- **`video-script`** (M) — Write a production-ready video script
- **`webinar-plan`** (G) — Plan a webinar or virtual event end to end
- **`what-if`** (G) — Compare 2-4 marketing budget scenarios side by side with directional point-estimate projections
- **`yearly-planner`** (G) — Produce the 12-month operational Yearly Planner
