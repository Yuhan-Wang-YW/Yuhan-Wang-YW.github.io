---
layout: default
title: Home
---

<section class="hero">
  <aside class="profile-card" aria-label="Profile">
    <img src="{{ '/assets/img/profile.jpg' | relative_url }}" alt="Profile photo for {{ site.author.name }}">
    <section class="side-section">
      <h2>Contact</h2>
      <p><a href="mailto:{{ site.author.email }}">{{ site.author.email }}</a></p>
      <p>Department of Agricultural and Applied Economics<br>University of Wisconsin - Madison<br>Madison, WI</p>
    </section>
    <section class="side-section">
      <h2>Follow</h2>
      <p><a href="https://github.com/{{ site.author.github }}">GitHub</a></p>
      {% if site.author.scholar %}
        <p><a href="{{ site.author.scholar }}">Google Scholar</a></p>
      {% endif %}
      {% if site.author.linkedin %}
        <p><a href="{{ site.author.linkedin }}">LinkedIn</a></p>
      {% endif %}
    </section>
  </aside>

  <div class="intro">
    <h1>Yuhan Wang</h1>
    <p class="lead">
      I am a Ph.D. candidate in Agricultural and Applied Economics at the
      University of Wisconsin - Madison.
    </p>
    <p>
      I am an applied economist interested in agricultural economics,
      environmental and resource economics, agricultural finance, empirical
      industrial organization, applied econometrics, and climate adaptation.
    </p>
    <p>
      My current work studies Farm Bill uncertainty and agricultural credit,
      technology-driven climate adaptation in the U.S. Corn Belt, and demand,
      markups, and counterfactuals in U.S. poultry shipments.
    </p>
    <p>
      Prior to my graduate study at UW-Madison, I earned a B.S. in Life Sciences
      and a B.A. in Economics from Peking University.
    </p>
  </div>
</section>

## Research Interests

- Agricultural economics and agricultural finance
- Environmental and resource economics
- Empirical industrial organization
- Applied econometrics and climate adaptation

## Selected Projects

- A Text-Based Measure of Farm Bill Uncertainty and Its Effects on Agricultural Credit.
- Technology, Risk, and Climate Adaptation: Corn Specialization in the U.S. Corn Belt.
- Demand, Markups, and Counterfactuals in U.S. Poultry Shipments.

## News

- May 2026: Website initialized with current research projects and CV.
- 2025: Presenting work on agricultural lending under policy uncertainty at the AAEA and WAEA Joint Annual Meeting.
