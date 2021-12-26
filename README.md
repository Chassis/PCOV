# PCOV
A Chassis extension to install and configure PCOV on your Chassis server.

## Project Installation
1. Add this extension to your extensions directory `git clone git@github.com:Chassis/PCOV.git extensions/pcov` or alternatively add the following to one of your [`.yaml`](https://github.com/Chassis/Chassis/blob/master/config.yaml) files:
   ```
   extensions:
     - chassis/pcov
   ```
2. Set your `config.local.yaml` PHP version to 7.1 or higher.
3. Run `vagrant provision`.

## 🚨 Remove Xdebug 🚨

You'll need to remove Xdebug for PCOV to work. The easiest way to do this is to add this to one of your `.yaml` files:
```yaml
disabled_extensions:
   - chassis/xdebug
```