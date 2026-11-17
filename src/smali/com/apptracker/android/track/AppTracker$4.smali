.class Lcom/apptracker/android/track/AppTracker$4;
.super Ljava/lang/Object;
.source "y"

# interfaces
.implements Lcom/apptracker/android/listener/AppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/track/AppTracker;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public onServerSync(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 1351
    if-nez p1, :cond_0

    .line 1266
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->J()V

    .line 1293
    const-string v0, "APTr"

    const-string v1, "/{\u001fm\u0019}\u000fh\tb\u0010w\\}\u0005`\u001fk\u0018\"\\M\u000eo\u000ff\\j\u001dz\u001d.\u0018k\u0010k\u0008k\u0018"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->G(Z)V

    .line 1437
    return-void
.end method
