.class public Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/manager/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogTextHolder"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field final synthetic this$0:Lcom/fusepowered/nx/monetization/manager/DialogManager;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .prologue
    const/4 v0, 0x0

    .line 360
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->this$0:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    .line 362
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 399
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v1

    .line 402
    :cond_1
    instance-of v2, p1, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 403
    check-cast v0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;

    .line 404
    .local v0, "holder":Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 405
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 414
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    iget-object v3, v0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 409
    :cond_4
    iget-object v2, v0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 418
    :cond_5
    iget-object v2, v0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    .line 378
    return-void
.end method
