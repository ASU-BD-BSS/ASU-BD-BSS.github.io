# The BSS Lab main website

Our website is a [GitHub Pages](https://pages.github.com/) site built with [Jekyll](https://jekyllrb.com/) and [Bootstrap](http://getboostrap.com), originally pulled from wadhwalab.com

What follows is a basic guide to making modifications to the site, focused on adding typical content.

# Prerequisites

 You will need working knowledge of [Git](https://git-scm.com/), [GitHub](https://github.com/), [Markdown](https://daringfireball.net/projects/markdown/syntax), [HTML](https://www.w3schools.com/html/), and (possibly) a few basic [Unix commands](https://mally.stanford.edu/~sr/computing/basic-unix.html). You will need [Jekyll](https://jekyllrb.com/) (which in turn requires [Ruby](https://www.ruby-lang.org/en/downloads/)  and [RubyGems](https://rubygems.org/pages/download)). If you need help getting set up, ask someone who is already up and running.


# Git workflow

Note: Almost everything described above can be achieved using a good GUI-based editor like [VS Code](https://code.visualstudio.com/). This is my own preferred tool.

## Cloning the repository

If you're a member of the our BSS group, please contact Piyussh or Professor Lee to request collaborator access to the website repository. Once the access is granted, you are ready to edit the site.

Clone the repository, i.e., make a local copy on your machine:

	git clone "url-link"

To start, you should be on the `basic-BSS` branch. In most cases, this should be the only branch in the repo when you begin working. Enter the repo using `cd` and "checkout" the `basic-BSS` branch.

## Creating a feature branch
You will now create a new branch for the changes you want to make to the website. 

	git branch <feature>
	git switch <feature>

Here, "feature" can be anything from "news" for adding a news item, to "typo" for fixing a typo, and so on.	Once on this branch, go ahead and make changes to the website (see below). Be sure to stage and commit your changes regularly and push these changes to remote, i.e., the GitHub repo. 

## Creating a pull request

When you are ready to publish your changes, you would want to create a [pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) to merge your changes into the `basic-BSS` branch. To do so, head over to the [GitHub repo](https://github.com/navishwadhwa/navishwadhwa.github.io) and [create a pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request). Someone else will then review your changes and potentially ask for some tweaks. Once the pull request is closed and the branches are merged, your changes will go live in a few minutes.

## Deleting the feature branch

Once the pull request is closed and your changes are live, the feature branch has served its purpose. At this stage, you should delete the feature branch [on GitHub](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository#deleting-a-branch) as well as on your computer.

To delete the branch on your computer, run `git branch --delete <feature>`. Then run `git branch -a` to verify the feature branch is deleted. To clean up remote branches that no longer exist, run `git fetch -p`. 

# Modifying website content
## Overview of the structure

Let's assume you're familiar with HTML pages. A site is a collection of HTML pages. For our site (and many others), there are page types, like a paper page, or a lab member page, which are the same in design but different in content. In the web-accessible site, these are indeed different pages. However, as you might hope, they are _generated_ from a single template file filled in with information from many paper- or member-specific data files. This generation is done every time the site changes; it is handled by GitHub Pages, the service we use.

The template files are weird-looking HTML files residing in the `_includes/themes/lab` folder.

## How to add content

For most common actions, such as adding a lab member, a new paper, or a news item, you will create a new Markdown file in the proper location, name it properly, and fill in the required fields. The best way to do this is to copy an existing item, change the name, and change its content.

For example, suppose you want to add a new team member, to appear on team page. To do this, go into the `team/_posts` folder. Copy one of the existing items into a new file named *with today's date* and a brief title. Here is an example doing this using command line,

	cp 2023-2-16-heewook-lee.md 2023-11-19-new-member-name.md

The date string in the file name is used by the generator to date and to order the items. Now edit the new file in the editor of your choice to make the content what you want. 

Add the file to the repository:

	git add 2023-11-19-new-member-name.md
	or do 
	git add .

And, when you're happy with it, commit and push:

	git commit -m "added new member"
	git push

The same basic process is used to add papers, team members, etc.

## Previewing your changes

Once your edits are done, preview the site. Generate the pages and start the private webserver:

	bundle exec jekyll serve

...and then open the local test site, http://127.0.0.1:4000. Look at anything you've changed and make sure it works as intended. You can continue making further changes while viewing them live in local test site. Just remember to stage and commit regularly. 

## Publishing
Once everything looks good, follow the process described above to create a pull request and merge the branch into `basic-BSS`.

Changes won't be immediate, so wait a minute or two while GitHub's servers regenerate the site and publish it. Check to make sure the public site live on git looks the way you intend.

Finally, delete the feature branch and call it a day.

# Next steps

To go to the next level, familiarize yourself with HTML and CSS. Fonts, colors, spacing, and similar stylings are separate from the template pages. Like most sites, these use Cascading Style Sheets (CSS). These and other more advanced settings are found in `\assets\themes` folder.  

### Push script and other Git good to knows

I personally prefer typing one line instead of 3 to push a change, so I have a script uploaded just run it by typing:

	/push.sh

make sure however while pushing you have the remote url set right after you have the auth key with VScode done, 
to check: 

	git remote -v
	git remote set-url origin https://github.com/piyussh01/piyussh01.github.com.git

Also make sure to pull and keep your local branch upto date with the live one if there are many collaboraters. 

## License

[MIT](http://opensource.org/licenses/MIT)
