set -eo pipefail

echo "--- :package: Fetch Metadata"
WEBHOOK="$(buildkite-agent meta-data get buildkite:webhook)"

echo "--- :evergreen_tree: Extract head commit message"
ISSUE_TITLE="$(jq .head_commit.message <<< ${WEBHOOK})"


echo "+++ :hammer: Print the head commit message"

echo -e "\033[33mCongratulations!\033[0m You've successfully run your first build on Buildkite! Your head commit message is: ${ISSUE_TITLE} 👍"
