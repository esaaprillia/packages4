include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyotp
PKG_VERSION:=2.8.0
PKG_RELEASE:=1

PYPI_NAME:=pyotp
PKG_HASH:=c2f5e17d9da92d8ec1f7de6331ab08116b9115adbabcba6e208d46fc49a98c5a

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=License

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyotp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python One-Time Password Library
  URL:=https://pyauth.github.io/pyotp/
  DEPENDS:=+python3
endef

define Package/python3-pyotp/description
PyOTP is a Python library for generating and verifying one-time passwords. It can be used to implement two-factor (2FA) or multi-factor (MFA) authentication methods in web applications and in other systems that require users to log in.
Open MFA standards are defined in RFC 4226 (HOTP: An HMAC-Based One-Time Password Algorithm) and in RFC 6238 (TOTP: Time-Based One-Time Password Algorithm). PyOTP implements server-side support for both of these standards. Client-side support can be enabled by sending authentication codes to users over SMS or email (HOTP) or, for TOTP, by instructing users to use Google Authenticator, Authy, or another compatible app. Users can set up auth tokens in their apps easily by using their phone camera to scan otpauth:// QR codes provided by PyOTP.
Implementers should read and follow the HOTP security requirements and TOTP security considerations sections of the relevant RFCs. At minimum, application implementers should follow this checklist:
• Ensure transport confidentiality by using HTTPS
• Ensure HOTP/TOTP secret confidentiality by storing secrets in a controlled access database
• Deny replay attacks by rejecting one-time passwords that have been used by the client (this requires storing the most recently authenticated timestamp, OTP, or hash of the OTP in your database, and rejecting the OTP when a match is seen)
• Throttle (rate limit) brute-force attacks against your application's login functionality (see RFC 4226, section 7.3)
• When implementing a "greenfield" application, consider supporting FIDO U2F/WebAuthn in addition to or instead of HOTP/TOTP. U2F uses asymmetric cryptography to avoid using a shared secret design, which strengthens your MFA solution against server-side attacks. Hardware U2F also sequesters the client secret in a dedicated single-purpose device, which strengthens your clients against client-side attacks. And by automating scoping of credentials to relying party IDs (application origin/domain names), U2F adds protection against phishing attacks. One implementation of FIDO U2F/WebAuthn is PyOTP's sister project, PyWARP.
We also recommend that implementers read the OWASP Authentication Cheat Sheet and NIST SP 800-63-3: Digital Authentication Guideline for a high level overview of authentication best practices.
endef

$(eval $(call Py3Package,python3-pyotp))
$(eval $(call BuildPackage,python3-pyotp))
$(eval $(call BuildPackage,python3-pyotp-src))
