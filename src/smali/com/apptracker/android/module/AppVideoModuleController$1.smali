.class Lcom/apptracker/android/module/AppVideoModuleController$1;
.super Ljava/lang/Object;
.source "c"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppVideoModuleController;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/apptracker/android/module/AppVideoModuleController;


# direct methods
.method constructor <init>(Lcom/apptracker/android/module/AppVideoModuleController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->b(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->b(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->destroy()V

    .line 283
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/advert/AppWebView;)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->F(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->F(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->destroy()V

    .line 569
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/advert/AppWebView;)V

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->k(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->k(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->destroy()V

    .line 265
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->m(Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/advert/AppWebView;)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->stopPlayback()V

    .line 379
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$1;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/advert/AppVideoView;)V

    .line 595
    :cond_3
    return-void
.end method
