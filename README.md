# SEMAT Alpha State Cards

This plugins adds SEMAT Alpha State Cards to your projects in Redmine. More information about this cards you can find on [Ivar Jacobson International website](https://www.ivarjacobson.com/alphastatecards)

## Installation

1. Create directory your_redmine_base/plugins/alpha_cards.
2. Copy the content of this repository to the created directory.
3. From your_redmine_base directory run migration by following command to upgrade your database:

    ```ruby
    bundle exec rake redmine:plugins:migrate RAILS_ENV=production
    ```
4. Restart Redmine.

## Usage

After installation "Alpha cards" tab in project menu for each project will appear. You can expand cards by clicking [+], drag cards and click checkboxes to change state of alphas. All changes will be saved automatically.

## Developers

Developed by Kreosoft and Tomsk state university.