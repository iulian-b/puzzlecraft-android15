.class public Lcom/apptracker/android/util/AppEncryption;
.super Ljava/lang/Object;
.source "i"


# static fields
.field private static final synthetic h:Ljava/lang/String; = "0123456789ABCDEF"


# instance fields
.field private synthetic d:Ljava/security/spec/AlgorithmParameterSpec;

.field private final synthetic k:Ljavax/crypto/spec/SecretKeySpec;

.field private final synthetic m:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "jyx\u001c\u000b\u0004\u000f"

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 401
    const/16 v1, 0x20

    const-string v2, "\n}\u0019\u0004g"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 491
    new-array v1, v1, [B

    .line 540
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    const-string v0, "p|b\u0016r{r\u0016arrj\u0006iP]UP_^"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/apptracker/android/util/AppEncryption;->m:Ljavax/crypto/Cipher;

    .line 513
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "\u001el\u000c"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/apptracker/android/util/AppEncryption;->k:Ljavax/crypto/spec/SecretKeySpec;

    .line 528
    invoke-virtual {p0}, Lcom/apptracker/android/util/AppEncryption;->getIV()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/apptracker/android/util/AppEncryption;->d:Ljava/security/spec/AlgorithmParameterSpec;

    .line 584
    return-void
.end method

.method private static synthetic B([B)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    aget-byte v0, p0, v1

    .line 256
    and-int/lit16 v0, v0, 0xff

    add-int/lit16 v0, v0, 0x100

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 221
    goto :goto_0
.end method

.method private static synthetic B(Ljava/lang/String;)[B
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 421
    new-array v3, v2, [B

    .line 589
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 317
    return-object v3

    .line 547
    :cond_0
    mul-int/lit8 v0, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput-byte v4, v3, v1

    move v1, v0

    .line 589
    goto :goto_0
.end method

.method private static synthetic B([B[B)[B
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B

    .prologue
    .line 21
    array-length v0, p0

    new-array v2, v0, [B

    .line 243
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 17
    return-object v2

    .line 160
    :cond_0
    aget-byte v0, p0, v1

    array-length v3, p1

    rem-int v3, v1, v3

    aget-byte v3, p1, v3

    xor-int/2addr v0, v3

    int-to-byte v3, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, v2, v1

    move v1, v0

    .line 243
    goto :goto_0
.end method

.method private static synthetic G(C)I
    .locals 1
    .param p0, "arg0"    # C

    .prologue
    .line 368
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 530
    add-int/lit8 v0, p0, -0x41

    .line 574
    :goto_0
    return v0

    .line 425
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 451
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 313
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 448
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x34

    goto :goto_0

    .line 594
    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    .line 574
    const/16 v0, 0x3e

    goto :goto_0

    .line 272
    :cond_3
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_4

    .line 555
    const/16 v0, 0x3f

    goto :goto_0

    .line 299
    :cond_4
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic G()Ljava/lang/String;
    .locals 8

    .prologue
    .line 3
    const-string v0, "\u0019n\u001bl\u001dj\u001fh\u0011fH=J;L9N7@5B3D1F/X-Z+\\)^\'P%h\u001dj\u001bl\u0019n\u0017`\u0015b\u0013d\u0011f\u000fx\rz\u000b|\t~\u0007p\u0005"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    const/16 v0, 0x10

    .line 254
    const-string v1, ""

    move-object v2, v1

    move v1, v0

    .line 81
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gtz v0, :cond_0

    .line 235
    return-object v2

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 54
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 81
    goto :goto_0
.end method

.method private static synthetic G(CI)Ljava/lang/String;
    .locals 3
    .param p0, "arg0"    # C
    .param p1, "arg1"    # I

    .prologue
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v0

    .line 172
    goto :goto_0
.end method

.method private static synthetic G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 146
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 251
    .end local p0    # "arg0":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 118
    .restart local p0    # "arg0":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    .line 107
    const-string p2, ""

    .line 236
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 217
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v0

    move v2, v0

    .line 134
    :goto_1
    if-lt v1, v4, :cond_3

    .line 206
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 200
    if-ltz v6, :cond_5

    .line 50
    const/4 v0, 0x1

    .line 165
    if-ge v6, v3, :cond_4

    .line 176
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    :cond_4
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 189
    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static synthetic G(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "arg0"    # Ljava/lang/StringBuffer;
    .param p1, "arg1"    # B

    .prologue
    .line 537
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    return-void
.end method

.method private static synthetic G(I[B)[B
    .locals 3
    .param p0, "arg0"    # I
    .param p1, "arg1"    # [B

    .prologue
    .line 196
    new-array v0, p0, [B

    .line 71
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    return-object v0
.end method

.method private static synthetic G(Ljava/lang/String;)[B
    .locals 12
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 23
    const/4 v0, 0x1

    new-array v3, v0, [B

    move v0, v1

    move v5, v1

    .line 15
    :goto_0
    int-to-double v8, v0

    div-int/lit8 v0, v6, 0x2

    int-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    cmpg-double v0, v8, v10

    if-ltz v0, :cond_0

    .line 65
    return-object v3

    .line 79
    :cond_0
    const-string v0, ""

    .line 56
    mul-int/lit8 v0, v5, 0x2

    mul-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    :goto_1
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v7, v0

    .line 111
    :try_start_1
    aput-byte v7, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 15
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v0

    move v0, v2

    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v5, 0x2

    mul-int/lit8 v4, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "o"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 109
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 153
    :goto_3
    array-length v8, v3

    if-lt v0, v8, :cond_1

    .line 175
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aput-byte v7, v4, v0

    move-object v0, v4

    .line 198
    goto :goto_2

    .line 26
    :cond_1
    aget-byte v8, v3, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v4, v2

    move v2, v0

    .line 153
    goto :goto_3
.end method

.method private static synthetic G([B)[B
    .locals 3
    .param p0, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 461
    const-string v0, "\u001el\u000c"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 498
    const-string v1, "bqp\u0008ak\u007f~"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 418
    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 297
    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 375
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 305
    return-object v0
.end method

.method private static synthetic G([B[B)[B
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "xtj"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 316
    const-string v1, "\u001el\u000c"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 545
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 531
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 502
    return-object v0
.end method

.method public static base64decode(Ljava/lang/String;)[B
    .locals 9
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 414
    :goto_0
    return-object v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_1
    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_2

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v3

    .line 179
    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    .line 11
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_3

    move-object v0, v4

    .line 414
    goto :goto_0

    .line 43
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 255
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->G(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0x12

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->G(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0xc

    add-int/2addr v0, v5

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->G(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v0, v5

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->G(C)I

    move-result v5

    add-int v6, v0, v5

    move v0, v1

    move v5, v1

    .line 62
    :goto_3
    const/4 v7, 0x3

    if-ge v0, v7, :cond_4

    add-int v0, v3, v5

    array-length v7, v4

    if-lt v0, v7, :cond_5

    .line 437
    :cond_4
    add-int/lit8 v3, v3, 0x3

    .line 11
    add-int/lit8 v0, v2, 0x4

    move v2, v0

    goto :goto_2

    .line 222
    :cond_5
    add-int v7, v3, v5

    rsub-int/lit8 v0, v5, 0x2

    mul-int/lit8 v0, v0, 0x8

    shr-int v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v8, v0

    add-int/lit8 v0, v5, 0x1

    aput-byte v8, v4, v7

    move v5, v0

    .line 62
    goto :goto_3
.end method

.method public static base64encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "arg0"    # [B

    .prologue
    const/4 v1, 0x0

    .line 136
    const-string v0, "h\u001dj\u001bl\u0019n\u0017`\u0015b\u0013d\u0011f\u000fx\rz\u000b|\t~\u0007p\u0005H=J;L9N7@5B3D1F/X-Z+\\)^\'P%\u0019n\u001bl\u001dj\u001fh\u0011f\u0002p"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string v0, ""

    .line 73
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x3

    rem-int/lit8 v5, v2, 0x3

    .line 30
    array-length v2, p0

    add-int/2addr v2, v5

    invoke-static {v2, p0}, Lcom/apptracker/android/util/AppEncryption;->G(I[B)[B

    move-result-object p0

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 161
    :goto_0
    array-length v6, p0

    if-lt v0, v6, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u000c\u0004"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 53
    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 214
    add-int/2addr v0, v6

    .line 4
    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 214
    add-int/2addr v0, v6

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 16
    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 155
    and-int/lit8 v0, v0, 0x3f

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v0, v2, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    .line 161
    goto :goto_0
.end method

.method public static decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->G([B)[B

    move-result-object v0

    .line 542
    invoke-static {p1}, Lcom/apptracker/android/util/AppEncryption;->B(Ljava/lang/String;)[B

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppEncryption;->G([B[B)[B

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x200

    const/4 v3, 0x0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v7, v0

    .line 32
    rem-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v1, v7, 0x10

    rsub-int/lit8 v1, v1, 0x10

    invoke-static {v3, v1}, Lcom/apptracker/android/util/AppEncryption;->G(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/apptracker/android/util/AppEncryption;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 246
    const-string v0, "tiJ8e+8Fb^21xd|5"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppEncryption;->B([B[B)[B

    move-result-object v0

    .line 69
    array-length v2, v0

    if-le v2, v11, :cond_a

    .line 140
    new-array v2, v11, [B

    move v4, v3

    move v5, v3

    .line 7
    :goto_0
    if-lt v4, v11, :cond_1

    move-object v5, v2

    move-object v4, v1

    move v6, v3

    move v2, v3

    .line 163
    :goto_1
    if-lt v2, v7, :cond_2

    .line 125
    invoke-static {v4}, Lcom/apptracker/android/util/AppEncryption;->base64encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t\u0006b"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0014nG"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/apptracker/android/util/AppEncryption;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    aget-byte v6, v0, v5

    add-int/lit8 v4, v5, 0x1

    aput-byte v6, v2, v5

    move v5, v4

    .line 7
    goto :goto_0

    .line 180
    :cond_2
    :try_start_0
    const-string v0, "jyx\u001c\u0008"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 156
    :goto_2
    add-int/lit8 v0, v0, 0x10

    if-le v0, v7, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    add-int/lit8 v2, v7, -0x1

    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 211
    :goto_3
    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppEncryption;->B([B[B)[B

    move-result-object v8

    .line 171
    array-length v0, v4

    array-length v1, v8

    add-int/2addr v0, v1

    new-array v1, v0, [B

    move v0, v3

    move v2, v3

    .line 90
    :goto_4
    array-length v9, v4

    if-lt v0, v9, :cond_4

    move v0, v3

    move v2, v3

    .line 145
    :goto_5
    array-length v9, v8

    if-lt v0, v9, :cond_5

    .line 80
    array-length v0, v8

    array-length v2, v5

    add-int/2addr v0, v2

    new-array v4, v0, [B

    move v0, v3

    move v2, v3

    .line 208
    :goto_6
    array-length v9, v8

    if-lt v0, v9, :cond_6

    move v0, v3

    move v2, v3

    .line 5
    :goto_7
    array-length v9, v5

    if-lt v0, v9, :cond_7

    .line 67
    array-length v0, v4

    if-le v0, v11, :cond_9

    .line 188
    new-array v0, v11, [B

    move v2, v3

    move v5, v3

    .line 207
    :goto_8
    if-lt v2, v11, :cond_8

    .line 238
    :goto_9
    const-string v2, "tiJ8e+8Fb^21xd|5"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 244
    add-int/lit8 v2, v6, 0x10

    invoke-static {v4, v0}, Lcom/apptracker/android/util/AppEncryption;->B([B[B)[B

    move-result-object v0

    :goto_a
    move-object v5, v0

    move-object v4, v1

    move v6, v2

    .line 163
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 185
    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->sha1([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->G(Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 156
    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    add-int/lit8 v2, v6, 0x10

    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_3

    .line 252
    :cond_4
    aget-byte v9, v4, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v9, v1, v2

    move v2, v0

    .line 90
    goto :goto_4

    .line 237
    :cond_5
    array-length v0, v4

    add-int v9, v0, v2

    aget-byte v10, v8, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v10, v1, v9

    move v2, v0

    .line 145
    goto :goto_5

    .line 205
    :cond_6
    aget-byte v9, v8, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v9, v4, v2

    move v2, v0

    .line 208
    goto :goto_6

    .line 47
    :cond_7
    array-length v0, v8

    add-int v9, v0, v2

    aget-byte v10, v5, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v10, v4, v9

    move v2, v0

    .line 5
    goto :goto_7

    .line 170
    :cond_8
    aget-byte v8, v4, v5

    add-int/lit8 v2, v5, 0x1

    aput-byte v8, v0, v5

    move v5, v2

    .line 207
    goto :goto_8

    :cond_9
    move-object v0, v4

    goto :goto_9

    :cond_a
    move v2, v3

    goto :goto_a
.end method

.method public static encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 549
    const-string v0, "le\u007f\u001c\u0001"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->G([B)[B

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppEncryption;->m([B[B)[B

    move-result-object v0

    .line 336
    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->m([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, -0x1

    xor-int/lit8 v0, v0, 0x7c

    int-to-char v0, v0

    aput-char v0, v3, v1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0xe

    int-to-char v1, v1

    aput-char v1, v3, v4

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private static synthetic m([B)Ljava/lang/String;
    .locals 4
    .param p0, "arg0"    # [B

    .prologue
    .line 420
    if-nez p0, :cond_0

    .line 583
    const-string v0, ""

    :goto_0
    return-object v0

    .line 412
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 266
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v3, p0

    if-lt v0, v3, :cond_1

    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_1
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppEncryption;->G(Ljava/lang/StringBuffer;B)V

    move v1, v0

    .line 266
    goto :goto_1
.end method

.method private static synthetic m([B[B)[B
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "\u001el\u000c"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 591
    const-string v1, "xtj"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 290
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 291
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 470
    return-object v0
.end method

.method public static sha1([B)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # [B

    .prologue
    .line 148
    :try_start_0
    const-string v0, "jyx\u001c\u0008"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->B([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    .line 1
    :catch_0
    move-exception v0

    .line 114
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public decrypt128(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    move-object v0, p1

    .line 490
    .end local p1    # "arg0":Ljava/lang/String;
    .local v0, "arg0":Ljava/lang/String;
    :goto_0
    const-string v1, "=;+;="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/apptracker/android/util/AppEncryption;->m:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/apptracker/android/util/AppEncryption;->k:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/apptracker/android/util/AppEncryption;->d:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 285
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/apptracker/android/util/AppEncryption;->m:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 281
    new-instance v2, Ljava/lang/String;

    const-string v3, "le\u007f\u001c\u0001"

    invoke-static {v3}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 462
    return-object v2

    .line 598
    :cond_0
    const-string v1, "=;+;="

    const-string v2, "U"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .end local v0    # "arg0":Ljava/lang/String;
    .restart local p1    # "arg0":Ljava/lang/String;
    move-object v0, p1

    .end local p1    # "arg0":Ljava/lang/String;
    .restart local v0    # "arg0":Ljava/lang/String;
    goto :goto_0
.end method

.method public encrypt128(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/apptracker/android/util/AppEncryption;->m:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/apptracker/android/util/AppEncryption;->k:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/apptracker/android/util/AppEncryption;->d:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 431
    iget-object v0, p0, Lcom/apptracker/android/util/AppEncryption;->m:Ljavax/crypto/Cipher;

    const-string v1, "\n}\u0019\u0004g"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 535
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "le\u007f\u001c\u0001"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v0

    .line 334
    :goto_0
    const-string v2, "3"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    return-object v1

    .line 449
    :cond_0
    const-string v0, "U"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "=;+;="

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public getIV()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .prologue
    .line 541
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 485
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 366
    return-object v1
.end method
