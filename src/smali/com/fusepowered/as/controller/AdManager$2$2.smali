.class Lcom/fusepowered/as/controller/AdManager$2$2;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/FetchAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/AdManager$2;->onExpand(Ljava/util/Properties;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/as/controller/AdManager$2;

.field final synthetic val$properties:Ljava/util/Properties;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/AdManager$2;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->this$1:Lcom/fusepowered/as/controller/AdManager$2;

    iput-object p2, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->val$properties:Ljava/util/Properties;

    iput-object p3, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailure(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->val$properties:Ljava/util/Properties;

    const-string v1, "mraidJavascriptInterfaceListener"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    .line 163
    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->EXPAND:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    .line 164
    return-void
.end method

.method public onAdSuccess(Lcom/fusepowered/as/model/ad/ProviderAd;)V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 150
    const-string v1, "providerAd"

    check-cast p1, Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    invoke-static {p1}, Lcom/fusepowered/as/factory/AdFactory;->buildExpandedMraidProviderAd(Lcom/fusepowered/as/model/ad/HTMLProviderAd;)Lcom/fusepowered/as/model/ad/MraidProviderAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "context"

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->this$1:Lcom/fusepowered/as/controller/AdManager$2;

    iget-object v2, v2, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v2}, Lcom/fusepowered/as/controller/AdManager;->access$700(Lcom/fusepowered/as/controller/AdManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "mraidBannerViewId"

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->val$properties:Ljava/util/Properties;

    const-string v3, "mraidBannerViewId"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    const-string v1, "mraidExpandCustomClose"

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->val$properties:Ljava/util/Properties;

    const-string v3, "mraidExpandCustomClose"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "mraidExpandUrl"

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "controllerId"

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager$2$2;->this$1:Lcom/fusepowered/as/controller/AdManager$2;

    iget-object v2, v2, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v2}, Lcom/fusepowered/as/controller/AdManager;->access$300(Lcom/fusepowered/as/controller/AdManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v1, Lcom/fusepowered/as/controller/command/ExpandMraidCommand;

    invoke-direct {v1, v0}, Lcom/fusepowered/as/controller/command/ExpandMraidCommand;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v1}, Lcom/fusepowered/as/controller/command/ExpandMraidCommand;->execute()V

    .line 157
    return-void
.end method
