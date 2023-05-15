#!/bin/bash

ssh -i ssh-key-2023-05-15.key ubuntu@redacted

ssh -i ssh-key-2023-05-15secondary.key ubuntu@redacted

#Need to add allow rule in "Security list" for relevant Instances in the Oracle cloud