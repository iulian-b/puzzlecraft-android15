.class public Lcom/fusepowered/sa/android/publish/d/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/fusepowered/sa/android/publish/d/a/a/d;

.field private b:Lcom/fusepowered/sa/android/publish/d/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fusepowered/sa/android/publish/d/a/a/d;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/d/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/c;->a:Lcom/fusepowered/sa/android/publish/d/a/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/c;->b:Lcom/fusepowered/sa/android/publish/d/a/a/b;

    return-void
.end method

.method private a()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x1434aaba700L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/fusepowered/sa/android/publish/d/a/a/b;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/d/a/a/c;->a:Lcom/fusepowered/sa/android/publish/d/a/a/d;

    invoke-virtual {v3, p1, v2}, Lcom/fusepowered/sa/android/publish/d/a/a/d;->a(Lcom/fusepowered/sa/android/publish/d/a/a/b;Ljava/io/DataOutput;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fusepowered/sa/android/publish/d/a/a/c;->a([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private a([B)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p1, v0

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;ID)Lcom/fusepowered/sa/android/publish/d/a/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ID)",
            "Lcom/fusepowered/sa/android/publish/d/a/a/b;"
        }
    .end annotation

    int-to-long v0, p2

    invoke-static {v0, v1, p3, p4}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a(JD)Lcom/fusepowered/sa/android/publish/d/a/a/b;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x64

    const-wide v2, 0x3fa1c432ca57a787L    # 0.0347

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/d/a/a/c;->a(Ljava/util/List;ID)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;ID)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ID)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fusepowered/sa/android/publish/d/a/a/c;->b(Ljava/util/List;ID)Lcom/fusepowered/sa/android/publish/d/a/a/b;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/d/a/a/c;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a(J)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/c;->b:Lcom/fusepowered/sa/android/publish/d/a/a/b;

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/d/a/a/c;->a(Lcom/fusepowered/sa/android/publish/d/a/a/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
