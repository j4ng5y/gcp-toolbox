#!/usr/bin/env bash

# https://github.com/j4ng5y/gcp-toolbox
#
# License: WTFPL
#
# This bash script will inject some useful gcloud aliases into your bash shell.
#
# To Install:
# Run this script from your ~/.bashrc or any other bash profile file.

##########################
# Common Command Aliases #
##########################

alias gc='gcloud' # Simple gcloud shortcut

alias gci='gcloud init' # Init / Re-Init gcloud

alias gcl='gcloud auth login' # Authenticate / Re-Authenticate with GCP

#######################################
# Google Deployment-Manager shortcuts #
#######################################

alias gdm-new='gcloud deployment-manager deployments create' # Create a new GDM deployment
alias gdm-del='gcloud deployment-manager deployments delete' # Delete a GDM deployment
alias gdm-desc='gcloud deployment-manager deployments describe' # Describe a GDM deployment
alias gdm-ls='gcloud deployment-manager deployments list' # List GDM deployments
alias gdm-stop='gcloud deployment-manager deployments stop' # Stop a GDM deployment
alias gdm-update='gcloud deployment-manager deployments update' # Update a GDM deployment

#################
# Useful Lists #
################

# Projects
alias gcls-proj='gcloud projects list' # List all accessible projects
alias gcls-proj-id='gcloud projects list --format="table[no-heading](projectId)"' # List only the project ID of accessible projects
alias gcls-proj-num='gcloud projects list --format="table[no-heading](projectNumber)"' # List only the project number of accessible projects

# GCE Instances
alias gcls-gce='gcloud compute instances list' # List all accessible GCE instances
alias gcls-gce-running='gcloud compute instances list --filter="status:RUNNING"' # List all accessible running GCE instances
alias gcls-gce-notrunning='gcloud compute instances list --filter="status != RUNNING"' # List all accessible non-running GCE instances