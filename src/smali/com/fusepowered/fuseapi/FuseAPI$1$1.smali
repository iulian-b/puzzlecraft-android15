.class Lcom/fusepowered/fuseapi/FuseAPI$1$1;
.super Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;
.source "FuseAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/fuseapi/FuseAPI$1;


# direct methods
.method constructor <init>(Lcom/fusepowered/fuseapi/FuseAPI$1;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$1$1;->this$0:Lcom/fusepowered/fuseapi/FuseAPI$1;

    invoke-direct {p0, p2}, Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 421
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$1$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 425
    if-eqz p1, :cond_1

    .line 426
    invoke-static {p1}, Lcom/fusepowered/fuseapi/FuseAPI;->access$000(Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/fuseapi/FuseAPI$1$1;->this$0:Lcom/fusepowered/fuseapi/FuseAPI$1;

    iget-object v1, v1, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$params:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 432
    return-void

    .line 427
    :cond_1
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 428
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    goto :goto_0
.end method
