local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.keypont', 'eclipse-keypont') {
  settings+: {
    description: "",
    name: "Eclipse KeyPont project",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('crypto11') {
      allow_merge_commit: true,
      allow_rebase_merge: false,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Implement crypto.Signer and crypto.Decrypter for HSM-protected keys via PKCS#11",
      homepage: "https://github.com/eclipse-keypont/crypto11",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "cryptography",
        "golang",
        "ml-kem",
        "pkcs11",
        "pqc",
        "pqcrypto"
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          dismisses_stale_reviews: true,
          is_admin_enforced: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_commit_signatures: true,
          requires_linear_history: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('gose') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "GOSE = JOSE and friends for the Go developer",
      homepage: "https://github.com/eclipse-keypont/gose",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "golang",
        "jose",
        "jsonwebtoken",
        "jwk",
        "jwks",
        "jws",
        "jwt",
        "ml-kem",
        "pqcrypto",
        "security"
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          dismisses_stale_reviews: true,
          is_admin_enforced: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_commit_signatures: true,
          requires_linear_history: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('pkcs11-go') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "pkcs11-go",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      secrets: [
        orgs.newRepoSecret('GITLEAKS_LICENSE') {
          value: "********",
        },
      ],
    },
  ],
}
