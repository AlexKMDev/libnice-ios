Pod::Spec.new do |s|
  s.name         = "libnice"
  s.version      = "0.1.13"
  s.summary      = "Libnice is an implementation of the IETF's Interactive Connectivity Establishment (ICE) standard (RFC 5245) and the Session Traversal Utilities for NAT (STUN) standard (RFC 5389)."
  s.homepage     = "https://nice.freedesktop.org/wiki/"
  s.author       = ""
  s.source       = { :git => "", :tag => "#{s.version}" }
  s.platform     = :ios, '7.0'
  s.description  = <<-DESC
Libnice is an implementation of the IETF's Interactive Connectivity Establishment (ICE) standard (RFC 5245) and the Session Traversal Utilities for NAT (STUN) standard (RFC 5389).

It provides a GLib-based library, libnice and a Glib-free library, libstun as well as GStreamer elements.

ICE is useful for applications that want to establish peer-to-peer UDP data streams. It automates the process of traversing NATs and provides security against some attacks. It also allows applications to create reliable streams using a TCP over UDP layer.

Existing standards that use ICE include Session Initiation Protocol (SIP) and XMPP Jingle.
                    DESC
  s.license      = {
     :type => 'MPL1.1'
   }

  s.public_header_files = 'include/**/*'
  s.preserve_paths      = 'include/**/*'
  s.vendored_libraries  = 'lib/*.a'
  s.xcconfig            = {
    'HEADER_SEARCH_PATHS' => "$(PODS_ROOT)/Headers/Public/libnice/include"  }
  s.header_mappings_dir = 'include'
  s.requires_arc        = false
end