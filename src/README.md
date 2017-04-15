# UUIDv4

Library for generating UUID (universally unique identifier) version 4 strings.

The library will use [window.crypto](https://developer.mozilla.org/en-US/docs/Web/API/Window/crypto) to
generate random numbers if it detects that it is available, else it will fallback to use
[Math.random](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random).

## References

* Wikipedia: [Universally unique identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier)
* Specification: [RFC 4122](https://www.ietf.org/rfc/rfc4122.txt)