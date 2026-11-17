.class Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;
.super Ljava/lang/Object;
.source "VastCompanionAd.java"

# interfaces
.implements Lcom/fusepowered/m2/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastCompanionAd;->handleClick(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastCompanionAd;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;->this$0:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lastFailedUrlAction"    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlAction"    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    sget-object v2, Lcom/fusepowered/m2/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    if-ne p2, v2, :cond_0

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "URL"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/fusepowered/m2/common/M2Browser;

    invoke-static {v2, v3, v0}, Lcom/fusepowered/m2/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget v3, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;->val$requestCode:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
