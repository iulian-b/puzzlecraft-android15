.class Lcom/apptracker/android/track/AppTracker$2;
.super Ljava/lang/Object;
.source "y"

# interfaces
.implements Lcom/apptracker/android/listener/AppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/track/AppTracker;->sync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public onServerSync(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 605
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->G(Landroid/content/Context;)V

    .line 689
    if-nez p1, :cond_0

    .line 1149
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "]\tm\u001fk\u000f}\u001a{\u0010b\u0005.\u000fw\u0012m\u0019jP.8o\u0008o\\j\u0019b\u0019z\u0019j\\#\\"

    invoke-static {v2}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "AppData_"

    invoke-static {v2}, Lcom/apptracker/android/track/AppTracker;->removeData(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->B(Z)V

    .line 1418
    return-void
.end method
