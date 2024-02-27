const std = @import("std");

pub fn build(b: *std.Build) void {
    add(b, "tar");
    add(b, "tgz");
    add(b, "tar_gz");
    add(b, "txz");
    add(b, "tar_xz");
    add(b, "tzst");
    add(b, "tar_zst");
    add(b, "git");
}

fn add(b: *std.Build, name: []const u8) void {
    b.default_step.dependOn(b.dependency(name, .{}).builder.default_step);
}
