import { createContext } from "react";

export const PupContext = createContext();

export function PupProvider(props) {
    return (
        <PupContext.Provider>
            {props.children}
        </PupContext.Provider>
    )
}