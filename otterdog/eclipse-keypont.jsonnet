local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.keypont', 'eclipse-keypont') {
  settings+: {
    description: "",
    name: "Eclipse KeyPont project",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
}
