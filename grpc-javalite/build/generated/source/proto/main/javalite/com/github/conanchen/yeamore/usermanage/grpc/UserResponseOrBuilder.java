// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: manage/usermanage.proto

package com.github.conanchen.yeamore.usermanage.grpc;

public interface UserResponseOrBuilder extends
    // @@protoc_insertion_point(interface_extends:usermanage.UserResponse)
    com.google.protobuf.MessageLiteOrBuilder {

  /**
   * <code>optional .common.Status status = 999;</code>
   */
  boolean hasStatus();
  /**
   * <code>optional .common.Status status = 999;</code>
   */
  com.github.conanchen.yeamore.common.grpc.Status getStatus();

  /**
   * <code>optional string id = 1;</code>
   */
  java.lang.String getId();
  /**
   * <code>optional string id = 1;</code>
   */
  com.google.protobuf.ByteString
      getIdBytes();

  /**
   * <code>optional string name = 2;</code>
   */
  java.lang.String getName();
  /**
   * <code>optional string name = 2;</code>
   */
  com.google.protobuf.ByteString
      getNameBytes();

  /**
   * <code>optional string desc = 3;</code>
   */
  java.lang.String getDesc();
  /**
   * <code>optional string desc = 3;</code>
   */
  com.google.protobuf.ByteString
      getDescBytes();

  /**
   * <code>optional bool active = 6;</code>
   */
  boolean getActive();
}
