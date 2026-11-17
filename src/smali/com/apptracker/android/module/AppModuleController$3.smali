.class Lcom/apptracker/android/module/AppModuleController$3;
.super Ljava/lang/Object;
.source "u"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppModuleController;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/apptracker/android/module/AppModuleController;


# direct methods
.method constructor <init>(Lcom/apptracker/android/module/AppModuleController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppModuleController;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleController$3;->m:Lcom/apptracker/android/module/AppModuleController;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/apptracker/android/module/AppModuleController;->G()Lcom/apptracker/android/advert/AppWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/apptracker/android/module/AppModuleController;->G()Lcom/apptracker/android/advert/AppWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleController;->B(Landroid/view/View;)V

    .line 352
    :cond_0
    return-void
.end method
