const conventionalCommit = require("./conventionalCommit.json");

const typesEnum = Object.keys(conventionalCommit.type.enum);

module.exports = {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "type-enum": [2, "always", typesEnum],
    "scope-case": [2, "always", ["camel-case"]],
    "subject-empty": [2, "never"],
    "subject-case": [2, "always", ["lower-case"]],
    "header-max-length": [2, "always", 72],
  },
  prompt: {
    settings: {},
    messages: {
      skip: ":skip",
      max: "101",
      min: "",
      emptyWarning: "can not be empty",
      upperLimitWarning: "over limit",
      lowerLimitWarning: "below limit",
    },
    questions: conventionalCommit,
  },
};
