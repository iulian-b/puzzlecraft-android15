.class Lcom/apptracker/android/module/AppModuleController$1;
.super Ljava/lang/Object;
.source "u"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppModuleController;->displayModuleInCurrentActivity(Landroid/app/Activity;)Z
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
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleController$1;->m:Lcom/apptracker/android/module/AppModuleController;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 187
    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleController$1;->m:Lcom/apptracker/android/module/AppModuleController;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppModuleController;->destroyModule()V

    .line 177
    :goto_0
    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
