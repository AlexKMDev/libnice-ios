Pod::Spec.new do |s|
  s.name         = "libnice"
  s.version      = "0.1.13"
  s.summary      = "Libnice is an implementation of the IETF's Interactive Connectivity Establishment (ICE) standard (RFC 5245) and the Session Traversal Utilities for NAT (STUN) standard (RFC 5389)."
  s.homepage     = "https://nice.freedesktop.org/wiki/"
  s.author       = ""
  s.source       = { :git => "", :tag => s.version }
  s.platform     = :ios, '7.0'
  s.license      = 'MPL1.1'

  s.public_header_files = 'include/**/*'
  s.preserve_paths      = 'include/**/*'
  s.vendored_libraries  = 'lib/*.a'
  s.libraries = "iconv", "resolv"
  s.xcconfig            = {
    'HEADER_SEARCH_PATHS' => "$(PODS_ROOT)/Headers/Public/libnice/include"  }
  s.header_mappings_dir = 'include'
  s.requires_arc        = false
end