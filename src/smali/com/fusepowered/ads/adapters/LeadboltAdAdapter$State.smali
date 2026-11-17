.class public final enum Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;
.super Ljava/lang/Enum;
.source "LeadboltAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

.field public static final enum Available:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

.field public static final enum Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

.field public static final enum Displaying:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

.field public static final enum Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

.field public static final enum Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    const-string v1, "Loading"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .line 19
    new-instance v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    const-string v1, "Available"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Available:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .line 20
    new-instance v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    const-string v1, "Displaying"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displaying:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .line 21
    new-instance v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    const-string v1, "Displayed"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .line 22
    new-instance v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Available:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displaying:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->$VALUES:[Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->$VALUES:[Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {v0}, [Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    return-object v0
.end method


# virtual methods
.method public canTransitionTo(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)Z
    .locals 3
    .param p1, "targetState"    # Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p0, v2, :cond_2

    .line 28
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Available:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 39
    .local v0, "canTransition":Z
    :cond_1
    :goto_0
    return v0

    .line 29
    .end local v0    # "canTransition":Z
    :cond_2
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Available:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p0, v2, :cond_5

    .line 30
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displaying:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v1

    .restart local v0    # "canTransition":Z
    :cond_4
    goto :goto_0

    .line 31
    .end local v0    # "canTransition":Z
    :cond_5
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displaying:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p0, v2, :cond_8

    .line 32
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p1, v2, :cond_7

    :cond_6
    move v0, v1

    .restart local v0    # "canTransition":Z
    :cond_7
    goto :goto_0

    .line 33
    .end local v0    # "canTransition":Z
    :cond_8
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p0, v2, :cond_a

    .line 34
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p1, v2, :cond_9

    move v0, v1

    .restart local v0    # "canTransition":Z
    :cond_9
    goto :goto_0

    .line 36
    .end local v0    # "canTransition":Z
    :cond_a
    sget-object v2, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne p1, v2, :cond_b

    move v0, v1

    .restart local v0    # "canTransition":Z
    :cond_b
    goto :goto_0
.end method
