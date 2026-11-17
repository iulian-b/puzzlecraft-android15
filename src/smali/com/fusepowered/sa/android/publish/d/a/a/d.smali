.class public Lcom/fusepowered/sa/android/publish/d/a/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fusepowered/sa/android/publish/d/a/a/b;Ljava/io/DataOutput;)V
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b:Lcom/fusepowered/sa/android/publish/d/a/a/g;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->c()I

    move-result v1

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b:Lcom/fusepowered/sa/android/publish/d/a/a/g;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->d()I

    move-result v5

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b:Lcom/fusepowered/sa/android/publish/d/a/a/g;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->e()I

    move-result v6

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->c()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeInt(I)V

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b:Lcom/fusepowered/sa/android/publish/d/a/a/g;

    invoke-virtual {v0, v4}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->b(I)[J

    move-result-object v7

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_0

    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_1

    aget-wide v8, v7, v2

    invoke-interface {p2, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_0
    move v0, v1

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method
