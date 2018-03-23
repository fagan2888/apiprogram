---
title: API Styleguide -- Versioning
keywords: documentation, API, version
summary: "API Styleguide -- Versioning"
sidebar: apisupportteam_sidebar
permalink: styleguide_versioning.html
folder: apisupportteam
---


## Overview

There are two aspects to versioning:

1. How versioning is presenting to the consumers of the api. 
2. How versioning is implemented in the software. 

This guide will primarily focus on the first item, by providing a set of standards and best practices to be used when versioning an API interface.


## Version Semantics


- The version number should either be the letter `v` followed by a number ( `v1`, `v2`, etc...), or `vbeta`.
  - Numbered versions after `v1` represent _breaking changes_ to the API (see section below). The first release ready version should be `v1`, and each release after should monotonically increase.
  - The version `vbeta` represents an unstable API that is currently under development. This is useful to use when first creating an applicion, or developing a new set of changes for the API that you want consumers to test. 
    - An API can have multiple `vbeta` versions in its lifecycle, but each `vbeta` always represents the bleeding edge of an API at that point in time.
  - An example version lifecycle for an API: `vbeta` -> `v1` -> `v2` -> `vbeta` -> `v3`
- Multiple versions can be available at the same time from the same API. 
  - Make sure to check and see if anyone is using an old version *before* deprecating it.
- The versiong should be the first thing present in the url after the project.
	- Always include the version in the url.
  - For example: `api.ipums.org/nhgis/v1/resource`


## Breaking Changes
Generally, breaking changes are anything that would force a client to change the way they communicate with the API, either because functionality has been removed or changed.

Here are examples of breaking changes:
- Removing or renaming an endpoint
- Removing or changing the name of a field returned for an endpoint
- Changing the semantic meaning of an endpoint
- Removing support for an HTTP method on an endpoint

Here are examples of non-breaking changes:
- Adding a new endpoint
- Adding a new HTTP method on an endpoint
- Adding a new optional data format
- Adding a new attribute on existing data types




