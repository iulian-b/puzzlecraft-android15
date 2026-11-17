.class Lcom/fusepowered/ac/n$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ab"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/n$y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/fusepowered/ac/n$ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method a(I)Lcom/fusepowered/ac/n$y;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/fusepowered/ac/n$ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/n$y;

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;
    .locals 3

    .prologue
    .line 496
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ac/n$ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/fusepowered/ac/n$ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/n$y;

    .line 499
    iget-object v2, v0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    :goto_1
    return-object v0

    .line 496
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 502
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "No such zone: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 503
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/fusepowered/ac/ADCData$c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/n$ab;->a:Ljava/util/ArrayList;

    .line 475
    if-nez p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 477
    :goto_1
    invoke-virtual {p1}, Lcom/fusepowered/ac/ADCData$c;->i()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 479
    new-instance v2, Lcom/fusepowered/ac/n$y;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$y;-><init>()V

    .line 480
    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$c;->b(I)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    .line 481
    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$y;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lcom/fusepowered/ac/n$ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method b()Lcom/fusepowered/ac/n$y;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/fusepowered/ac/n$ab;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/n$y;

    return-object v0
.end method
