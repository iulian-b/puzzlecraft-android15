.class Lcom/fusepowered/as/AerServInterstitial$4;
.super Ljava/lang/Object;
.source "AerServInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/AerServInterstitial;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/AerServInterstitial;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/AerServInterstitial;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fusepowered/as/AerServInterstitial$4;->this$0:Lcom/fusepowered/as/AerServInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial$4;->this$0:Lcom/fusepowered/as/AerServInterstitial;

    invoke-static {v0}, Lcom/fusepowered/as/AerServInterstitial;->access$000(Lcom/fusepowered/as/AerServInterstitial;)Lcom/fusepowered/as/controller/listener/ShowListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial$4;->this$0:Lcom/fusepowered/as/AerServInterstitial;

    invoke-static {v0}, Lcom/fusepowered/as/AerServInterstitial;->access$000(Lcom/fusepowered/as/AerServInterstitial;)Lcom/fusepowered/as/controller/listener/ShowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ShowListener;->onShow()V

    .line 101
    return-void
.end method
