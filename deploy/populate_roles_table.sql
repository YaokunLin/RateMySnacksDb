-- Deploy rate-my-snacks-db:populate_roles_table to pg
-- requires: appschema
-- requires: roles_table

BEGIN;

INSERT INTO rms_schema.roles (name) VALUES
    ('Admin'),
    ('Snack Manager'),
    ('Reviewer'),
    ('User'),
    ('Guest');

COMMIT;

/*
Admin: Users with the highest level of access. They can manage all aspects of the application, including creating, editing, and deleting snacks, managing users, and configuring settings. Administrators often have full control over the app.

Snack Manager: Users with the ability to add, edit, and delete snacks. They can also manage snack ratings and reviews but don't have access to user management or other administrative features.

Reviewer: Users who can rate and review snacks but cannot add, edit, or delete snacks. Reviewers can also view snack details and interact with other users through comments or other community features.

User (or Member): Regular users who can browse snacks, view snack details, and participate in community features like commenting on reviews. They don't have any specific permissions or responsibilities related to adding, editing, or managing snacks.

Guest: Users with the lowest level of access. They can view and browse snacks but cannot rate, review, or participate in any community features. This role is suitable for users who need to access the app's public areas but don't have any specific permissions or responsibilities.

In the context of the Rate My Snacks app, the difference between a Reviewer and a User (or Member) in terms of permissions can be determined based on the actions they are allowed to perform.

A User (or Member) might have the following permissions:

Browse and search for snacks.
Rate snacks.
Write reviews for snacks.
View their own profile and update their account information.
A Reviewer, on the other hand, may have additional or elevated permissions, such as:

All permissions of a User (or Member).
Access to a more extensive set of snacks or exclusive snack categories.
Add new snacks to the database.
Moderate or manage other users' reviews, such as editing or deleting inappropriate content.
Access to a dashboard or analytics page to view user engagement, snack ratings, and reviews data.
The actual difference in permissions between a User (or Member) and a Reviewer depends on your app's specific requirements and desired user experience.






Regenerate response

*/
