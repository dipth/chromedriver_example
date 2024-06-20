# Instructions
1. Setup a fresh Ubuntu 22.04 LTS machine
2. Load this application code onto the machine
3. Navigate to the application directory
4. Run `chmod +x bin/linux_setup.sh`
5. Run `./bin/linux_setup.sh`
6. Run `./bin/rails c`
7. Execute `DebugJob.new.perform` and observe the chromedriver output and look for the line: `Page Title: Google`
8. Execute `DebugJob.perform_async`
9. Exit the rails console with `exit`
10. Run `bundle exec sidekiq` and observe the chromedriver output and look for the line `Page Title: Google`
