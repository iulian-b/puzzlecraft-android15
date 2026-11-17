.class Lcom/fusepowered/sa/android/publish/d/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/d/a/a/a$a;
    }
.end annotation


# static fields
.field static final a:[[D

.field static final synthetic b:Z

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v8, 0xb

    const/4 v7, 0x7

    const/4 v1, 0x1

    const/16 v6, 0x9

    const/4 v2, 0x0

    const-class v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->b:Z

    const/16 v0, 0x15

    new-array v0, v0, [[D

    new-array v3, v1, [D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    aput-object v3, v0, v2

    const/4 v3, 0x2

    new-array v3, v3, [D

    fill-array-data v3, :array_0

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_1

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x4

    new-array v4, v4, [D

    fill-array-data v4, :array_2

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x5

    new-array v4, v4, [D

    fill-array-data v4, :array_3

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const/4 v4, 0x6

    new-array v4, v4, [D

    fill-array-data v4, :array_4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v7, [D

    fill-array-data v4, :array_5

    aput-object v4, v0, v3

    new-array v3, v7, [D

    fill-array-data v3, :array_6

    aput-object v3, v0, v7

    const/16 v3, 0x8

    const/16 v4, 0x8

    new-array v4, v4, [D

    fill-array-data v4, :array_7

    aput-object v4, v0, v3

    new-array v3, v6, [D

    fill-array-data v3, :array_8

    aput-object v3, v0, v6

    const/16 v3, 0xa

    new-array v4, v6, [D

    fill-array-data v4, :array_9

    aput-object v4, v0, v3

    new-array v3, v6, [D

    fill-array-data v3, :array_a

    aput-object v3, v0, v8

    const/16 v3, 0xc

    new-array v4, v6, [D

    fill-array-data v4, :array_b

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const/16 v4, 0xa

    new-array v4, v4, [D

    fill-array-data v4, :array_c

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-array v4, v8, [D

    fill-array-data v4, :array_d

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-array v4, v8, [D

    fill-array-data v4, :array_e

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const/16 v4, 0xc

    new-array v4, v4, [D

    fill-array-data v4, :array_f

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const/16 v4, 0xd

    new-array v4, v4, [D

    fill-array-data v4, :array_10

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const/16 v4, 0xd

    new-array v4, v4, [D

    fill-array-data v4, :array_11

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const/16 v4, 0xe

    new-array v4, v4, [D

    fill-array-data v4, :array_12

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const/16 v4, 0xf

    new-array v4, v4, [D

    fill-array-data v4, :array_13

    aput-object v4, v0, v3

    sput-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    sget-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->c:[I

    move v0, v2

    :goto_1
    sget-object v3, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    array-length v3, v3

    if-ge v0, v3, :cond_3

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    sget-object v3, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    aget-object v6, v3, v0

    move v3, v2

    :goto_2
    array-length v7, v6

    if-ge v3, v7, :cond_2

    aget-wide v8, v6, v3

    cmpg-double v7, v8, v4

    if-gez v7, :cond_0

    aget-wide v4, v6, v3

    sget-object v7, Lcom/fusepowered/sa/android/publish/d/a/a/a;->c:[I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fd926e978d4fdf4L    # 0.393
        0x3fd999999999999aL    # 0.4
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fd21cac083126e9L    # 0.283
        0x3fce5604189374bcL    # 0.237
        0x3fd03126e978d4feL    # 0.253
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fcc49ba5e353f7dL    # 0.221
        0x3fc3d70a3d70a3d7L    # 0.155
        0x3fc2d0e560418937L    # 0.147
        0x3fc47ae147ae147bL    # 0.16
    .end array-data

    :array_4
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fc72b020c49ba5eL    # 0.181
        0x3fbbe76c8b439581L    # 0.109
        0x3fb78d4fdf3b645aL    # 0.092
        0x3fb78d4fdf3b645aL    # 0.092
        0x3fb9db22d0e56042L    # 0.101
    .end array-data

    :array_5
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fc3b645a1cac083L    # 0.154
        0x3fb495182a9930beL    # 0.0804
        0x3faf2e48e8a71de7L    # 0.0609
        0x3facb923a29c779aL    # 0.0561
        0x3fad97f62b6ae7d5L    # 0.0578
        0x3fb05532617c1bdaL    # 0.0638
    .end array-data

    :array_6
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fc10624dd2f1aa0L    # 0.133
        0x3fafa43fe5c91d15L    # 0.0618
        0x3fa5a858793dd97fL    # 0.0423
        0x3fa2617c1bda511aL    # 0.0359
        0x3fa1c432ca57a787L    # 0.0347
        0x3fa2a305532617c2L    # 0.0364
    .end array-data

    :array_7
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fbe353f7ced9168L    # 0.118
        0x3fa9096bb98c7e28L    # 0.0489
        0x3f9f559b3d07c84bL    # 0.0306
        0x3f989374bc6a7efaL    # 0.024
        0x3f963886594af4f1L    # 0.0217
        0x3f961e4f765fd8aeL    # 0.0216
        0x3f977318fc504817L    # 0.0229
    .end array-data

    :array_8
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fbae147ae147ae1L    # 0.105
        0x3fa4538ef34d6a16L    # 0.0397
        0x3f9758e219652bd4L    # 0.0228
        0x3f90ff972474538fL    # 0.0166
        0x3f8ce075f6fd21ffL    # 0.0141
        0x3f8b3d07c84b5dccL    # 0.0133
        0x3f8ba5e353f7ced9L    # 0.0135
        0x3f8db22d0e560419L    # 0.0145
    .end array-data

    :array_9
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fb85f06f6944674L    # 0.0952
        0x3fa0d844d013a92aL    # 0.0329
        0x3f91d14e3bcd35a8L    # 0.0174
        0x3f882a9930be0dedL    # 0.0118
        0x3f8350092ccf6be3L    # 0.00943
        0x3f8148fd9fd36f7eL    # 0.00844
        0x3f80c5eb313be22eL    # 0.00819
        0x3f815379fa97e133L    # 0.00846
    .end array-data

    :array_a
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fb63f141205bc02L    # 0.0869
        0x3f9c432ca57a786cL    # 0.0276
        0x3f8bda5119ce075fL    # 0.0136
        0x3f81b1d92b7fe08bL    # 0.00864
        0x3f7a9fbe76c8b439L    # 0.0065
        0x3f769c23b7952d23L    # 0.00552
        0x3f750331e3a7daa5L    # 0.00513
        0x3f74d940789613d3L    # 0.00509
    .end array-data

    :array_b
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fb47ae147ae147bL    # 0.08
        0x3f982a9930be0dedL    # 0.0236
        0x3f861e4f765fd8aeL    # 0.0108
        0x3f7a75cd0bb6ed67L    # 0.00646
        0x3f72ccf6be37de94L    # 0.00459
        0x3f6e646f15619115L    # 0.00371
        0x3f6af3a14cec41ddL    # 0.00329
        0x3f69b90ea9e6eeb7L    # 0.00314
    .end array-data

    :array_c
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fb2f1a9fbe76c8bL    # 0.074
        0x3f94c985f06f6944L    # 0.0203
        0x3f81eb851eb851ecL    # 0.00875
        0x3f7426fe718a86d7L    # 0.00492
        0x3f6b328b6d86ec18L    # 0.00332
        0x3f64e3bcd35a8588L    # 0.00255
        0x3f61c6d1e108c3f4L    # 0.00217
        0x3f604d551d68c693L    # 0.00199
        0x3f5fc8f32378ab0dL    # 0.00194
    .end array-data

    :array_d
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fb1a36e2eb1c433L    # 0.0689
        0x3f921ff2e48e8a72L    # 0.0177
        0x3f7d68c692f6e829L    # 0.00718
        0x3f6f36262cba732eL    # 0.00381
        0x3f63fd0d0678c005L    # 0.00244
        0x3f5d53cddd6e04c0L    # 0.00179
        0x3f57ebaf102363b2L    # 0.00146
        0x3f5522a6f3f52fc2L    # 0.00129
        0x3f53d31b9b66f933L    # 0.00121
        0x3f53a92a30553261L    # 0.0012
    .end array-data

    :array_e
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fb083126e978d50L    # 0.0645
        0x3f8ff2e48e8a71deL    # 0.0156
        0x3f7869835158b828L    # 0.00596
        0x3f689374bc6a7efaL    # 0.003
        0x3f5dfb9389b52008L    # 0.00183
        0x3f54f8b588e368f1L    # 0.00128
        0x3f50624dd2f1a9fcL    # 0.001
        0x3f4beb18116ebd4dL    # 8.52E-4
        0x3f49652bd3c36113L    # 7.75E-4
        0x3f48611fd5885d31L    # 7.44E-4
    .end array-data

    :array_f
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3faf06f694467382L    # 0.0606
        0x3f8c432ca57a786cL    # 0.0138
        0x3f747ae147ae147bL    # 0.005
        0x3f6394317acc4ef9L    # 0.00239
        0x3f56c61522a6f3f5L    # 0.00139
        0x3f4ea35935fc3b4fL    # 9.35E-4
        0x3f4700cd855970b5L    # 7.02E-4
        0x3f42cf0f9d2bf551L    # 5.74E-4
        0x3f408c3f3e0370ceL    # 5.05E-4
        0x3f3ecd4aa10e0221L    # 4.7E-4
        0x3f3e14bdfd2630ecL    # 4.59E-4
    .end array-data

    :array_10
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fad3c36113404eaL    # 0.0571
        0x3f8930be0ded288dL    # 0.0123
        0x3f715379fa97e133L    # 0.00423
        0x3f5f9f01b866e43bL    # 0.00193
        0x3f5187e7c06e19b9L    # 0.00107
        0x3f46aceaaf35e311L    # 6.92E-4
        0x3f4059ea57214f05L    # 4.99E-4
        0x3f39d2391d57ff9bL    # 3.94E-4
        0x3f35f45e0b4e11dcL    # 3.35E-4
        0x3f33cab81f969e3dL    # 3.02E-4
        0x3f32cf0f9d2bf551L    # 2.87E-4
        0x3f329cbab649d389L    # 2.84E-4
    .end array-data

    :array_11
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3faba5e353f7ced9L    # 0.054
        0x3f86bb98c7e28241L    # 0.0111
        0x3f6da7b0b3919264L    # 0.00362
        0x3f59e30014f8b589L    # 0.00158
        0x3f4b7e0ac7da1ec5L    # 8.39E-4
        0x3f4101b003686a4dL    # 5.19E-4
        0x3f3797cc39ffd60fL    # 3.6E-4
        0x3f3205bc01a36e2fL    # 2.75E-4
        0x3f2d9f4d37c1376dL    # 2.26E-4
        0x3f29f3c70c996b76L    # 1.98E-4
        0x3f27fc7607c419a0L    # 1.83E-4
        0x3f2711947cfa26a2L    # 1.76E-4
    .end array-data

    :array_12
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3faa43fe5c91d14eL    # 0.0513
        0x3f847064ece9a2c6L    # 0.00998
        0x3f698f1d3ed527e5L    # 0.00312
        0x3f554c985f06f694L    # 0.0013
        0x3f45b9a5a89b951cL    # 6.63E-4
        0x3f39d2391d57ff9bL    # 3.94E-4
        0x3f314d2f5dbb9cfaL    # 2.64E-4
        0x3f296d8f4f93bc0aL    # 1.94E-4
        0x3f2450efdc9c4da9L    # 1.55E-4
        0x3f214d2f5dbb9cfaL    # 1.32E-4
        0x3f1eeed8904f6dfcL    # 1.18E-4
        0x3f1d19157abb8801L    # 1.11E-4
        0x3f1c92ddbdb5d895L    # 1.09E-4
    .end array-data

    :array_13
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fa8fc504816f007L    # 0.0488
        0x3f828e0c9d9d3459L    # 0.00906
        0x3f661e4f765fd8aeL    # 0.0027
        0x3f51b1d92b7fe08bL    # 0.00108
        0x3f415df6555c52e7L    # 5.3E-4
        0x3f33db7f1737542aL    # 3.03E-4
        0x3f29b0ab2e1693c0L    # 1.96E-4
        0x3f22599ed7c6fbd2L    # 1.4E-4
        0x3f1c4fc1df3300deL    # 1.08E-4
        0x3f174dfa5ed64f2dL    # 8.89E-5
        0x3f145e5bd5e9ac01L    # 7.77E-5
        0x3f12aa26af9731e0L    # 7.12E-5
        0x3f11ccb11e1a9d3aL    # 6.79E-5
        0x3f11970138e523dcL    # 6.71E-5
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)I
    .locals 6

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    long-to-double v4, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot compute p for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " elements."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static a(ID)Lcom/fusepowered/sa/android/publish/d/a/a/a$a;
    .locals 7

    const/4 v5, 0x1

    const/4 v1, 0x2

    sget-boolean v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->b:Z

    if-nez v0, :cond_0

    if-ge p0, v5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p0, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    aget-object v0, v0, p0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    aget-object v2, v2, v1

    aget-wide v2, v2, v5

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_2

    new-instance v0, Lcom/fusepowered/sa/android/publish/d/a/a/a$a;

    sget-object v2, Lcom/fusepowered/sa/android/publish/d/a/a/a;->c:[I

    aget v2, v2, v1

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/d/a/a/a$a;-><init>(II)V

    :goto_0
    return-object v0

    :cond_2
    sget-object v2, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    aget-object v2, v2, p0

    aget-wide v2, v2, v0

    cmpg-double v0, p1, v2

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unable to satisfy %s with %s bpe"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->c:[I

    aget v0, v0, v1

    :goto_1
    sget-object v2, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    aget-object v2, v2, v1

    aget-wide v2, v2, v0

    cmpl-double v2, v2, p1

    if-lez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    sget-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/a;->c:[I

    aget v0, v0, v1

    goto :goto_1

    :cond_4
    :goto_2
    sget-object v2, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a:[[D

    aget-object v2, v2, v1

    add-int/lit8 v3, v0, -0x1

    aget-wide v2, v2, v3

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/fusepowered/sa/android/publish/d/a/a/a$a;

    invoke-direct {v2, v0, v1}, Lcom/fusepowered/sa/android/publish/d/a/a/a$a;-><init>(II)V

    move-object v0, v2

    goto :goto_0
.end method
