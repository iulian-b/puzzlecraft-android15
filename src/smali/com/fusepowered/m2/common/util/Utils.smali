.class public Lcom/fusepowered/m2/common/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/fusepowered/m2/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitMaskContainsFlag(II)Z
    .locals 1
    .param p0, "bitMask"    # I
    .param p1, "flag"    # I

    .prologue
    .line 50
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateUniqueId()J
    .locals 6

    .prologue
    .line 38
    .local v0, "newValue":J
    .local v2, "result":J
    :cond_0
    sget-object v4, Lcom/fusepowered/m2/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 39
    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 40
    const-wide v4, 0x7ffffffffffffffeL

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 41
    const-wide/16 v0, 0x1

    .line 43
    :cond_1
    sget-object v4, Lcom/fusepowered/m2/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    return-wide v2
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 17
    .local v3, "digest":Ljava/security/MessageDigest;
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 18
    .local v2, "bytes":[B
    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v3, v2, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 19
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 21
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v1, v0, v5

    .line 22
    .local v1, "b":B
    const-string v8, "%02X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 27
    .end local v0    # "arr$":[B
    .end local v2    # "bytes":[B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return-object v8

    .line 26
    :catch_0
    move-exception v4

    .line 27
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, ""

    goto :goto_1
.end method
