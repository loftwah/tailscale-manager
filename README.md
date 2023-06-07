# Automated User Management for Tailscale

This application adds users to a Tailscale group and schedules their access revocation.

## Setup

1. Install Ruby 3.2.2.
2. Run `bundle install`.
3. Copy `.env.example` to `.env` and fill in your Tailscale API key and AWS credentials.
4. Setup your AWS Lambda function and SQS queue according to the AWS documentation.

## Usage

To add a new user and schedule their access revocation, run:

```bash
rake user:add['dean.lofts@schoolstatus.com', 'dev']
