.class Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;
.super Ljava/lang/Object;
.source "ASTremorInterstitialProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tremorvideo/sdk/android/videoad/TremorVideo;->showAd(Landroid/app/Activity;I)Z

    move-result v0

    .line 99
    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No Ad Ready."

    invoke-static {v0, v2}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 104
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tremorvideo/sdk/android/videoad/TremorVideo;->showAd(Landroid/app/Activity;I)Z

    move-result v0

    goto :goto_0

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 109
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 121
    :goto_1
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load tremor ad"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 118
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_1
.end method
