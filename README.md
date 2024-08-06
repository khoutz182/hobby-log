# Logging my hobbies
- home brewing
- home tech setup
- maybe woodworking at some point

# Deployment
This should be automatic:
- The [publish](.github/workflows/publish.yml) action will run on the `main` branch, which will build and push a docker image.
- The action will then post to the [dispatch url](https://docs.github.com/en/rest/actions/workflows?apiVersion=2022-11-28#create-a-workflow-dispatch-event)
of the argocd-gitops repo.
- From there, the workflow in the gitops repo updates the deployment spec for this application
and commits the change back to the repo, to be picked up by [ArgoCD](https://argo-cd.readthedocs.io/en/stable/).
