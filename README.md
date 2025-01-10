# Rugit: A Git-like Version Control System in Ruby

Rugit is a simplified implementation of a version control system, similar to Git, written entirely in Ruby. It's designed as a learning exercise to understand the inner workings of Git and provides a basic set of functionalities for versioning files and directories.

**Disclaimer:** Rugit is a simplified educational project and is **not intended for production use**. It lacks many features and robustness of Git.

## Features

*   **Initialization:** Create a new Rugit repository.
*   **Adding files:** Stage changes for commit.
*   **Committing changes:** Save snapshots of your project.
*   **Basic logging:** View commit history.
*   **(Planned) Branching:** Create and manage different development branches.
*   **(Planned) Checking out commits:** Revert to previous states of your project.

## Installation

1.  Make sure you have Ruby installed (version 2.7 or higher recommended). You can check with `ruby -v`. If you don't have Ruby, you can install it using your system's package manager or from [https://www.ruby-lang.org/en/downloads/](https://www.ruby-lang.org/en/downloads/).

2.  Clone the repository:

    ```bash
    git clone [https://github.com/](https://github.com/)<your-username>/rugit.git # Replace with your repo URL
    cd rugit
    ```

3.  (Optional) Install Bundler if you want to manage dependencies (if any are added later):

    ```bash
    gem install bundler
    bundle install
    ```

## Usage

Here's a basic workflow example:

1.  **Initialize a repository:**

    ```bash
    ./rugit init
    ```

2.  **Add files to the staging area:**

    ```bash
    ./rugit add file1.txt file2.txt directory/
    ```

3.  **Commit changes:**

    ```bash
    ./rugit commit -m "Initial commit"
    ```

4.  **View commit history:**

    ```bash
    ./rugit log
    ```

## Development

Contributions are welcome! If you'd like to contribute to Rugit, please follow these steps:

1.  Fork the repository.
2.  Create a new branch for your feature or bug fix: `git checkout -b feature/my-new-feature`
3.  Make your changes and commit them: `git commit -m "Add some feature"`
4.  Push to the branch: `git push origin feature/my-new-feature`
5.  Create a pull request.

## Project Structure

*   `rugit`: The main executable script.
*   `lib/`: Contains the core Ruby code for Rugit.
*   `spec/`: (If tests are added) Contains the RSpec tests.

## Future Improvements

*   Implement branching and merging.
*   Implement `checkout` functionality.
*   Add more robust error handling.
*   Write comprehensive tests.
*   Improve performance.

## License

(Choose a license, e.g., MIT License)
