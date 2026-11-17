.class Lcom/apptracker/android/advert/AppJSInterface$3;
.super Ljava/lang/Object;
.source "jb"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/advert/AppJSInterface;->log(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/apptracker/android/advert/AppJSInterface;

.field private final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptracker/android/advert/AppJSInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/advert/AppJSInterface$3;->h:Lcom/apptracker/android/advert/AppJSInterface;

    iput-object p2, p0, Lcom/apptracker/android/advert/AppJSInterface$3;->m:Ljava/lang/String;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "APTr"

    iget-object v1, p0, Lcom/apptracker/android/advert/AppJSInterface$3;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method
