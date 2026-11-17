.class final Lcom/fusepowered/fuseapi/FuseAPI$4;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->showDialog(Lcom/fusepowered/util/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Lcom/fusepowered/util/Message;

.field final synthetic val$next:I


# direct methods
.method constructor <init>(Lcom/fusepowered/util/Message;I)V
    .locals 0

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    iput p2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$next:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v4, 0x1

    .line 2056
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    .line 2057
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->access$600(I)V

    .line 2058
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->access$700(I)V

    .line 2059
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getIsUrl()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2061
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2062
    .local v1, "urlToGo":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2064
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2065
    .local v0, "url":Ljava/net/URI;
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->access$800(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2071
    .end local v0    # "url":Ljava/net/URI;
    .end local v1    # "urlToGo":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2, v4}, Lcom/fusepowered/util/Message;->setClicked(Z)V

    .line 2073
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v2, :cond_1

    .line 2074
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    iget-object v3, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v3}, Lcom/fusepowered/util/Message;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/util/FuseCallback;->notificationAction(Ljava/lang/String;)V

    .line 2076
    :cond_1
    iget v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$next:I

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->access$900(I)V

    .line 2077
    return-void

    .line 2066
    .restart local v1    # "urlToGo":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
