.class final enum Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;
.super Ljava/lang/Enum;
.source "AdvancedButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

.field public static final enum DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

.field public static final enum PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    const-string v1, "PRESSED"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 59
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    const-string v1, "DEPRESSED"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->$VALUES:[Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->$VALUES:[Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    return-object v0
.end method
