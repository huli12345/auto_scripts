
#ifndef HMAC_H_
#define HMAC_H_

#include <stdint.h>

#include <openssl/hmac.h>
#include <openssl/evp.h>

#ifdef  __cplusplus
extern "C" {
#endif

extern int HKDF_extract(const EVP_MD *md, const uint8_t *salt, size_t saltLen, const uint8_t *inKey, size_t inKeyLen, uint8_t *prKeyBuf, size_t *prKeyLen);
extern int HKDF_expand(const EVP_MD *md, const uint8_t *prKey, size_t prKeyLen, const uint8_t *info, size_t infoLen, uint8_t *outKey, size_t outKeyLen);

#ifdef  __cplusplus
}
#endif

#endif /* HMAC_H_ */
