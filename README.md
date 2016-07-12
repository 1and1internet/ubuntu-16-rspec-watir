# Waitir Template Tester

This container runs Watir to test the template functionality in Openshift of the curated images.

Watir uses a pinned version of Firefox (v45) in headless mode in order to complete the tests checked out from an internal repo.

Unfortunately there is a compatibility issue with using the latest version of Firefox with the Headless Watir gem
