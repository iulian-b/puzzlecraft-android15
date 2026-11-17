.class Lcom/fusepowered/ac/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 382
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/fusepowered/ac/a$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/a$b;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void

    .line 382
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 368
    iget v3, p1, Landroid/os/Message;->what:I

    .line 370
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 371
    :goto_0
    if-nez v2, :cond_0

    const-string v0, ""

    .line 373
    :cond_0
    new-instance v4, Lcom/fusepowered/ac/AdColonyV4VCReward;

    invoke-direct {v4, v2, v0, v3}, Lcom/fusepowered/ac/AdColonyV4VCReward;-><init>(ZLjava/lang/String;I)V

    .line 374
    :goto_1
    sget-object v0, Lcom/fusepowered/ac/a;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 376
    sget-object v0, Lcom/fusepowered/ac/a;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/AdColonyV4VCListener;

    invoke-interface {v0, v4}, Lcom/fusepowered/ac/AdColonyV4VCListener;->onAdColonyV4VCReward(Lcom/fusepowered/ac/AdColonyV4VCReward;)V

    .line 374
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 370
    goto :goto_0

    .line 378
    :cond_2
    return-void
.end method
