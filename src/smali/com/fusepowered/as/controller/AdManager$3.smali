.class Lcom/fusepowered/as/controller/AdManager$3;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/FetchAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/controller/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/controller/AdManager;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/AdManager;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager$3;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$3;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$600(Lcom/fusepowered/as/controller/AdManager;)V

    .line 181
    return-void
.end method

.method public onAdSuccess(Lcom/fusepowered/as/model/ad/ProviderAd;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$3;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0, p1}, Lcom/fusepowered/as/controller/AdManager;->access$502(Lcom/fusepowered/as/controller/AdManager;Lcom/fusepowered/as/model/ad/ProviderAd;)Lcom/fusepowered/as/model/ad/ProviderAd;

    .line 174
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$3;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$800(Lcom/fusepowered/as/controller/AdManager;)V

    .line 175
    return-void
.end method
