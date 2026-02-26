# Specification

## Summary
**Goal:** Build Scriptoria, a full AI-powered film pre-production platform that transforms a simple idea into a screenplay, character profiles, and production plan using OpenAI, presented in a cinematic dark-themed dashboard.

**Planned changes:**
- Add a Motoko backend actor with three AI generation endpoints (`generateScreenplay`, `generateCharacterProfiles`, `generateProductionPlan`) that call OpenAI Chat Completions API via HTTP outcalls
- Build a frontend dashboard with a hero section, idea input field, and a Generate button that triggers all three AI calls in parallel
- Display animated skeleton placeholders in all three content panels (Screenplay, Character Profiles, Production Plan) during loading
- Implement "Save as PDF" export for the screenplay panel using jsPDF (A4, monospaced, paginated)
- Implement "Download Production Plan" export as a formatted .txt file with header metadata
- Apply a cinematic dark theme with amber/gold accents, film-inspired typography, smooth entrance animations, and fully responsive mobile layout

**User-visible outcome:** Users can enter a film idea, click Generate, and receive a formatted screenplay, character profiles, and production plan — all exportable — presented in a polished, mobile-responsive cinematic dashboard.
