---
title: API Gateway
keywords: documentation, API
summary: "API Gateway"
sidebar: styleguide_sidebar
permalink: styleguide_gateway.html
folder: styleguide
---

# What is an API Gateway?

An API Gateway is a service through which all API traffic is routed for all of
the organization's APIs. An API Gateway provides a single point of control where
API-related services such as authentication, API key request and assignment,
rate limiting and traffic monitoring can be performed.

# The IPUMS API Gateway

IPUMS uses Tyk for its API Gateway. All IPUMS APIs must be configured within Tyk.
Please see a member of the API Program Support Team's Technical Group for help
with this process for now; we hope to make this more self-service in the future.

# Gateway Policy

All production APIs (whether internal or external) should be routed through the
gateway. This is useful for monitoring and reporting. In addition, this ensures
that APIs rely on standard, centralized services for authentication.
