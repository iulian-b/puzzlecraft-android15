.class final Lcom/fusepowered/fuseapi/FuseAPI$1;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->startSession(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Lcom/fusepowered/util/FuseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adIdContext:Landroid/content/Context;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$adIdContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->userAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->userAgent:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 415
    :try_start_1
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->userAgent:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    :cond_1
    :goto_1
    new-instance v1, Lcom/fusepowered/fuseapi/FuseAPI$1$1;

    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$adIdContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/fusepowered/fuseapi/FuseAPI$1$1;-><init>(Lcom/fusepowered/fuseapi/FuseAPI$1;Landroid/content/Context;)V

    .line 434
    .local v1, "getAdvertisingIdTask":Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 435
    return-void

    .line 407
    .end local v1    # "getAdvertisingIdTask":Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "FuseAPI"

    const-string v3, "Could get not user agent through WebSettings.getDefaultUserAgent"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 417
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v2, "FuseAPI"

    const-string v3, "Could get not user agent through new WebView(activity).getSettings().getUserAgentString();"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
