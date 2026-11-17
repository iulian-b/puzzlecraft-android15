.class Lcom/fusepowered/as/AerServConfig$1;
.super Ljava/lang/Object;
.source "AerServConfig.java"

# interfaces
.implements Lcom/fusepowered/as/AerServEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/AerServConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/AerServConfig;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/AerServConfig;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fusepowered/as/AerServConfig$1;->this$0:Lcom/fusepowered/as/AerServConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAerServEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/AerServEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    return-void
.end method
