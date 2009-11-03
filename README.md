RideBoard
=========

RideBoard is an application that creates a virtual "ride board", of the sort sometimes found in dorms and similar public areas. It is an example application for the OSU CWD/StudioCT Ruby on Rails and Web Development group to explore working with the Rails framework. The app is meant to provide a service to help students interested in attending the OSU CWD Web Dev Day coordinate rides to the conference.

(Note: The default Rails README file is still available, and contains plenty of useful (though sometimes outdated) information about working with a Rails app.)

RideBoard User Stories
----------------------

The following list captures the functionality of the app in XP-style user stories.

> ### User Story Format
> User stories, in brief, come in the format, "As a [System Role], I would 
> like to [perform function], so that [stakeholder value] is achieved.

- As an Unregistered User, I would like to sign up with a valid .edu email address, so that I can use the app.
- As a System Owner, I would like registrants to have to verify their email address, so that fraud risk is mitigated and the system is more coherent.
- As a User, I would like to search postings by origin school and ride/bum, so that I can find relevant information.
- As a User, I would like to give my name, so that I can be identified in posts without showing my email address.
- As a Poster, I would like the origin of my postings to default to my school, so that I am saved time.
- As a Poster, I would like to include a short note with my posting (i.e., "I'll split the cost of gas."), so that I can coordinate non-standard details.
- As a Driver, I would like to create a new ride posting, so that I can offer rides and find riders.
- As a Driver, I would like my posting to say how many open seats I have left, so the ride doesn't get overbooked.
- As a Driver, I would like to set a starting meetup place and departure time, so that riders can catch the ride.
- As a Driver, I would like to tell bummers I can drive, so that I can recruit riders.
- As a Driver, I would like to accept or deny a bum a ride, so that I can control who rides with me.
- As a Driver, I would like to be aware if a bummer has accepted another ride, so that I can look for other riders.
- As a Bummer, I would like to create a bum a ride posting, so that drivers can find me.
- As a Bummer, I would like to ask Drivers to bum a ride, so that I can solicit a ride.
- As a Bummer, I would like to accept or reject an offer of a ride, so that I can control who I ride with.
- As a Bummer, I would like to be aware if a ride offer has been taken by someone else, so that I can look for other drivers.
- As a Bummer, I would like to ask a full car if I can squeeze in, so that I can try for a ride with scant drivers.
- As a Rider, I would like to know if my driver cancels their ride, so that I can look for another ride.
- As a Rider, I would like to know if my driver is letting someone squeeze in, so that I can decide whether to continue riding.
- As a Rider, I would like to peace out of the ride, so that I can notify the driver if I change my mind.

### Nice to haves:
As a Driver or Rider, I would like to have private messaging.
As a Driver, I would like the option of including alternative contact info.
As a Rider, I would like the option of including alternative contact info.

Email Formats:
--------------

The system should auto-recognize and allow specific .edu addresses. This is currently a partial list.

* muohio.edu
* osu.edu
* ohio-state.edu
