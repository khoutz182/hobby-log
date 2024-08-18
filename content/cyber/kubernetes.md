+++
title = "Kubernetes"
+++

Hosted by scaleway, argocd manages the kubernetes cluster usint gitops.

Until I put together a diagram for that, this is the rough flow:

1. push up changes on the application repository
2. github actions runs and pushes up a docker image
3. the github action sends a [workflow dispatch event](https://docs.github.com/en/rest/actions/workflows?apiVersion=2022-11-28#create-a-workflow-dispatch-event) to the gitops repository
4. the configured workflow in the gitops repository updates the appropriate deployment definition version and pushes the changes back up to the `main` branch
5. [ArgoCD](https://argo-cd.readthedocs.io/en/stable/) picks up the change and deploys the new version of the application

# Notes
- Authentication is never done with personal access tokens. Those are fine for individuals, but for processes that should be supported long term, using a
  [github app](https://docs.github.com/en/apps) seems like a better idea, plus the same setup can be done in orgs and on enterprise setups.

# TODO:
- configure a [webhook](https://argo-cd.readthedocs.io/en/stable/operator-manual/webhook/) on the gitops repo to notify argocd, rather than have argocd poll
- style the site better
  - the hamberder menu on mobile is trash

{% mermaid() %}
graph TD
    A[Enter Chart Def] --> B(Preview)
    b --> C{decide}
{% end %}
