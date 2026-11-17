.class Lcom/apptracker/android/module/AppModuleControllerBase$2;
.super Ljava/lang/Object;
.source "z"

# interfaces
.implements Lcom/apptracker/android/listener/AppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppModuleControllerBase;->trackClick(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public onServerSync(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "arg0"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apptracker/android/track/AppTracker;->storeActions(Ljava/util/ArrayList;I)I

    .line 114
    :cond_0
    return-void
.end method
