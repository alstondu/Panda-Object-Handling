
"use strict";

let add_collision = require('./add_collision.js')
let set_arm = require('./set_arm.js')
let set_gripper = require('./set_gripper.js')
let pick = require('./pick.js')
let remove_collision = require('./remove_collision.js')

module.exports = {
  add_collision: add_collision,
  set_arm: set_arm,
  set_gripper: set_gripper,
  pick: pick,
  remove_collision: remove_collision,
};
