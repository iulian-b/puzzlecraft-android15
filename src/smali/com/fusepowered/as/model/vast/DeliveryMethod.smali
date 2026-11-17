.class public final enum Lcom/fusepowered/as/model/vast/DeliveryMethod;
.super Ljava/lang/Enum;
.source "DeliveryMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/as/model/vast/DeliveryMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/as/model/vast/DeliveryMethod;

.field public static final enum PROGRESSIVE:Lcom/fusepowered/as/model/vast/DeliveryMethod;

.field public static final enum STREAMING:Lcom/fusepowered/as/model/vast/DeliveryMethod;

.field private static deliveryMethodHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/model/vast/DeliveryMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private methodString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;

    const-string v1, "STREAMING"

    const-string v2, "streaming"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/as/model/vast/DeliveryMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;->STREAMING:Lcom/fusepowered/as/model/vast/DeliveryMethod;

    .line 10
    new-instance v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;

    const-string v1, "PROGRESSIVE"

    const-string v2, "progressive"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/as/model/vast/DeliveryMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;->PROGRESSIVE:Lcom/fusepowered/as/model/vast/DeliveryMethod;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/as/model/vast/DeliveryMethod;

    sget-object v1, Lcom/fusepowered/as/model/vast/DeliveryMethod;->STREAMING:Lcom/fusepowered/as/model/vast/DeliveryMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/as/model/vast/DeliveryMethod;->PROGRESSIVE:Lcom/fusepowered/as/model/vast/DeliveryMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;->$VALUES:[Lcom/fusepowered/as/model/vast/DeliveryMethod;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;->deliveryMethodHashMap:Ljava/util/HashMap;

    .line 21
    const-class v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;

    .line 22
    sget-object v2, Lcom/fusepowered/as/model/vast/DeliveryMethod;->deliveryMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/DeliveryMethod;->getMethodString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/fusepowered/as/model/vast/DeliveryMethod;->methodString:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/DeliveryMethod;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;->deliveryMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/DeliveryMethod;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/as/model/vast/DeliveryMethod;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fusepowered/as/model/vast/DeliveryMethod;->$VALUES:[Lcom/fusepowered/as/model/vast/DeliveryMethod;

    invoke-virtual {v0}, [Lcom/fusepowered/as/model/vast/DeliveryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/as/model/vast/DeliveryMethod;

    return-object v0
.end method


# virtual methods
.method public getMethodString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/DeliveryMethod;->methodString:Ljava/lang/String;

    return-object v0
.end method
