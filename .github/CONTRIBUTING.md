# How to contribute

## Want to add or edit the next event?

1. Start a new branch with prefix `event/` like `event/2017-04`.

1. Edit the `_data/io-events.yml` file and choose the authors from the `_data/authors.yml` file, adding the new ones when necessary.

1. Make a new pull request on `master`.

## Did you find a bug?

* **Ensure the bug was not already reported** by searching on GitHub under [Issues](https://github.com/saglacio/saglac.io/issues).

* If you're unable to find an open issue addressing the problem, [open a new one](https://github.com/saglacio/saglac.io/issues/new). Be sure to include a **title and clear description** and as much relevant information as possible to demonstrate that the expected behavior is not what's occurring.

* If possible, follow the bug report template to create the issue. Simply remove any inappropriate section.

* For more detailed information on submitting a bug report and creating an issue, contact the team at info@saglac.io.

## Submitting changes

Please **discuss the changes in the related issue** before making a pull request as it will greatly reduce risks of duplicates.

We follow a simplified [Git Flow](http://nvie.com/posts/a-successful-git-branching-model/) branching model, where feature branches are squashed onto the `develop` branch.

### Did you write a patch that fixes a bug?

* Open a new GitHub pull request on the `master` branch with the patch.

* Ensure the PR description clearly describes the problem and solution. Include the relevant issue number if applicable.

* Before submitting, please read the Code Convention section of this document.

### Did you fix whitespace, format code, or make a purely cosmetic patch?

Changes that are cosmetic in nature and do not fix a problem are to be merged onto `develop` as a feature.

### Do you intend to add a new feature or change an existing one?

* Suggest your change as a [new issue](https://github.com/saglacio/saglac.io/issues/new).

* When approved by the team, start writing code and make a pull request onto `develop`.

### Do you have questions about the source code?

* Questions about how to get started should be asked on the Facebook page, or the slack channel.

* If you feel your question should be addressed in the documentation, feel free to open a [new issue](https://github.com/saglacio/saglac.io/issues/new).

## Code convention

Nothing special yet, just a few guidelines:

- Links referring to the website itself should use the `relative_url` filter.

  ```
  <a href="{{ '/internal/page' | relative_url }}">Internal page</a>
  ```

- Pages use the `permalink` option to have pretty links.

  ```
  ---
  layout: page
  title: 'Foire aux questions'
  permalink: faq
  ---
  ```

- Custom styling should be inside the `_sass/_custom.scss` file or be imported inside this file.


_Thanks! :heart: from the Saglac IO community._
